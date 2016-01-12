module MIPPeR
  class CbcModel < Model
    attr_reader :ptr

    def initialize
      super

      @var_count = 0
      @constr_count = 0

      # Construct a new model
      @ptr = FFI::AutoPointer.new Cbc.Cbc_newModel,
                                  Cbc.method(:Cbc_deleteModel)
    end

    # Set the sense of the model
    def sense=(sense)
      @sense = sense
      sense = sense == :min ? 1 : -1
      Cbc.Cbc_setObjSense @ptr, sense
    end

    # Optimize the model
    def optimize
      # Ensure pending variables and constraints are added
      update

      # Run the solver and save the status for later
      Cbc.Cbc_solve @ptr
    end

    # Get the status of the model
    def status
      @status = Cbc.Cbc_status @ptr
      case @status
      when 0
        :optimized
      when 1, 2
        :invalid
      else
        :unknown
      end
    end

    # The value of the objective function
    def objective_value
      Cbc.Cbc_getObjValue @ptr
    end

    # Get the value of a variable from the model
    def variable_value(var)
      dblptr = Cbc.Cbc_getColSolution @ptr
      dblptr.read_array_of_double(@variables.length)[var.index]
    end

    def set_variable_bounds(var_index, lb, ub)
      Cbc.Cbc_setColLower @ptr, var_index, lb
      Cbc.Cbc_setColUpper @ptr, var_index, ub
    end

    protected

    # Add multiple variables to the model simultaneously
    def add_variables(vars)
      # Store all the variables in the model
      # Most of the work will be done when we add the constraints
      vars.each do |var|
        var.instance_variable_set :@model, self
        @variables << var
      end
    end

    # Add multiple constraints at once
    def add_constraints(constrs)
      # Store the index which will be used for each constraint
      constrs.each do |constr|
        constr.instance_variable_set :@index, @constr_count
        @constr_count += 1
      end

      # Construct a matrix of non-zero values in CSC format
      start = []
      index = []
      value = []
      col_start = 0
      @variables.each do |var|
        # Mark the start of this column
        start << col_start

        var.constraints.each do |constr|
          col_start += 1
          index << constr.instance_variable_get(:@index)
          value << constr.expression.terms[var]
        end
      end
      start << col_start

      start_buffer = FFI::MemoryPointer.new :int, start.length
      start_buffer.write_array_of_int start
      index_buffer = FFI::MemoryPointer.new :int, index.length
      index_buffer.write_array_of_int index
      value_buffer = FFI::MemoryPointer.new :double, value.length
      value_buffer.write_array_of_double value

      Cbc.Cbc_loadProblem @ptr, @variables.length, constrs.length,
                          start_buffer, index_buffer, value_buffer,
                          nil, nil, nil, nil, nil

      constrs.each do |constr|
        store_constraint constr
        @constraints << constr
      end

      # We store variables now since they didn't exist earlier
      @variables.each_with_index do |var, i|
        var.instance_variable_set(:@index, i)
        store_variable var
      end
    end

    private

    # Save the constraint to the model and update the constraint pointers
    def store_constraint(constr)
      # Update the constraint to track the index in the model
      index = constr.instance_variable_get(:@index)
      constr.instance_variable_set :@model, self

      # Set constraint properties
      Cbc.Cbc_setRowName(@ptr, index, constr.name) unless constr.name.nil?

      case constr.sense
      when :==
        lb = ub = constr.rhs
      when :>=
        lb = constr.rhs
        ub = Float::INFINITY
      when :<=
        lb = -Float::INFINITY
        ub = constr.rhs
      end
      Cbc.Cbc_setRowLower @ptr, index, lb
      Cbc.Cbc_setRowUpper @ptr, index, ub
    end

    # Set the properties of a variable in the model
    def store_variable(var)
      # Force the correct bounds since we can't explicitly specify binary
      if var.type == :binary
        var.instance_variable_set(:@lower_bound, 0)
        var.instance_variable_set(:@upper_bound, 1)
      end

      Cbc.Cbc_setColLower @ptr, var.index, var.lower_bound
      Cbc.Cbc_setColUpper @ptr, var.index, var.upper_bound
      Cbc.Cbc_setObjCoeff @ptr, var.index, var.coefficient

      case var.type
      when :continuous
        Cbc.Cbc_setContinuous @ptr, var.index
      when :integer, :binary
        Cbc.Cbc_setInteger @ptr, var.index
      else
        fail :type
      end

      Cbc.Cbc_setColName(@ptr, var.index, var.name) unless var.name.nil?
    end
  end
end
