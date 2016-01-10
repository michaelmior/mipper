module MIPPeR
  class LPSolveModel < Model
    attr_reader :ptr

    def initialize
      super

      @var_count = 0
      @constr_count = 0

      # Construct a new model
      @ptr = FFI::AutoPointer.new LPSolve.make_lp(0, 0),
                                  LPSolve.method(:delete_lp)

      # Disable output
      ret = LPSolve.set_outputfile @ptr, ''
      fail if ret != 1
    end

    # Set the sense of the model
    def sense=(sense)
      @sense = sense
      sense = sense == :min ? 0 : 1
      LPSolve.set_sense @ptr, sense
    end

    # Optimize the model
    def optimize
      # Ensure pending variables and constraints are added
      update

      # Run the solver and save the status for later
      @status = LPSolve.solve @ptr
    end

    # Get the status of the model
    def status
      case @status
      when LPSolve::OPTIMAL
        :optimized
      when LPSolve::INFEASIBLE, LPSolve::UNBOUNDED, LPSolve::DEGENERATE
        :invalid
      else
        :unknown
      end
    end

    # The value of the objective function
    def objective_value
      LPSolve.get_objective @ptr
    end

    # Get the value of a variable from the model
    def variable_value(var)
      # To access the value of a result variable we need an index into the
      # solution which setarts with the objective function, followed by all
      # of the constraints, and finally the variables
      # We explicitly ask for the number of rows since extra constraints
      # may have been added
      rows = LPSolve.get_Nrows(@ptr)
      LPSolve.get_var_primalresult @ptr, rows + var.index
    end

    def set_variable_bounds(var_index, lb, ub)
      ret = LPSolve.set_bounds @ptr, var_index, lb, ub
      fail if ret != 1
    end

    protected

    # Add multiple variables to the model simultaneously
    def add_variables(vars)
      # Allocate space for the new variables
      ret = LPSolve.resize_lp(@ptr, @constraints.length,
                              @variables.length + vars.length)
      fail if ret != 1

      # Store all the variables in the model
      vars.each { |var| store_variable var }
    end

    # Add multiple constraints at once
    def add_constraints(constrs)
      ret = LPSolve.resize_lp(@ptr, @constraints.length + constrs.length,
                              @variables.length)
      fail if ret != 1

      constrs.each { |constr| store_constraint constr }
    end

    private

    # Save the constraint to the model and update the constraint pointers
    def store_constraint(constr)
      # Update the constraint to track the index in the model
      index = LPSolve.get_Nrows(@ptr)
      constr.instance_variable_set :@model, self
      constr.instance_variable_set :@index, index
      @constr_count += 1

      # Set constraint properties
      if constr.name
        ret = LPSolve.set_row_name(@ptr, index, constr.name)
        fail if ret != 1
      end

      # Determine the correct constant for the type of constraint
      case constr.sense
      when :==
        type = LPSolve::EQ
      when :>=
        type = LPSolve::GE
      when :<=
        type = LPSolve::LE
      end

      # Initialize arrays used to hold the coefficients for each variable
      row = []
      colno = []
      constr.expression.terms.each do |var, coeff|
        row << coeff * 1.0
        colno << var.instance_variable_get(:@index)
      end

      row_buffer = FFI::MemoryPointer.new :pointer, row.length
      row_buffer.write_array_of_double row
      colno_buffer = FFI::MemoryPointer.new :pointer, colno.length
      colno_buffer.write_array_of_int colno

      ret = LPSolve.add_constraintex(@ptr, constr.expression.terms.length,
                                     row_buffer, colno_buffer,
                                     type, constr.rhs)
      fail if ret != 1

      @constraints << constr
    end

    # Save the variable to the model and update the variable pointers
    def store_variable(var)
      # Update the variable to track the index in the model
      index = @var_count + 1
      var.instance_variable_set :@model, self
      var.instance_variable_set :@index, index
      @var_count += 1

      ret = LPSolve.add_columnex @ptr, 0, nil, nil
      fail if ret != 1

      # Set variable properties
      case var.type
      when :integer
        ret = LPSolve.set_int @ptr, index, 1
      when :binary
        ret = LPSolve.set_binary @ptr, index, 1
      when :continuous
        ret = LPSolve.set_int @ptr, index, 0
      else
        fail type
      end
      fail if ret != 1

      ret = LPSolve.set_col_name(@ptr, index, var.name)
      fail if ret != 1

      ret = LPSolve.set_obj(@ptr, index, var.coefficient)
      fail if ret != 1

      set_variable_bounds index, var.lower_bound, var.upper_bound

      @variables << var
    end
  end
end
