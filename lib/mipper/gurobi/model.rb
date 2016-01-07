module MIPPeR
  class GurobiModel < Model
    attr_reader :ptr, :environment

    def initialize
      super

      @environment = Environment.new

      @ptr = FFI::MemoryPointer.new :pointer
      Gurobi.GRBnewmodel @environment.ptr, @ptr, 'model',
                         0, nil, nil, nil, nil, nil
      @ptr = @ptr.read_pointer

      # Ensure the model is freed
      ObjectSpace.define_finalizer self, self.class.finalize(@ptr)
    end

    # Add new objects (variables and constraints) to the model
    def <<(obj)
      case obj
      when Variable
        @pending_variables << obj
      when Constraint
        @pending_constraints << obj
      else
        fail TypeError
      end
    end

    # Update the model
    def update
      if @pending_variables.length == 1
        add_variable @pending_variables.first
      elsif @pending_variables.length > 0
        add_variables @pending_variables
      end
      @pending_variables = []

      if @pending_constraints.length == 1
        add_constraint @pending_constraints.first
      elsif @pending_constraints.length > 0
        add_constraints @pending_constraints
      end
      @pending_constraints = []

      ret = Gurobi.GRBupdatemodel @ptr
      fail if ret != 0
    end

    # Write the model to a file
    def write(filename)
      Gurobi.GRBwrite @ptr, filename
    end

    # Set the sense of the model
    def sense=(sense)
      sense = sense == :min ? Gurobi::GRB_MINIMIZE : Gurobi::GRB_MAXIMIZE
      @sense = sense
      ret = Gurobi.GRBsetintattr @ptr, Gurobi::GRB_INT_ATTR_MODELSENSE, sense
      fail if ret != 0
    end

    # Optimize the model
    def optimize
      # Ensure pending variables and constraints are added
      update

      ret = Gurobi.GRBoptimize @ptr
      fail if ret != 0
    end

    # Get the status of the model
    def status
      intptr = FFI::MemoryPointer.new :pointer
      ret = Gurobi.GRBgetintattr @ptr, Gurobi::GRB_INT_ATTR_STATUS, intptr
      fail if ret != 0

      case intptr.read_int
      when Gurobi::GRB_OPTIMAL
        :optimized
      when Gurobi::GRB_INFEASIBLE, Gurobi::GRB_INF_OR_UNBD,
           Gurobi::GRB_UNBOUNDED
        :invalid
      else
        :unknown
      end
    end

    # Compute an irreducible inconsistent subsytem for the model
    def compute_IIS
      ret = Gurobi.GRBcomputeIIS @ptr
      fail if ret != 0
    end

    # The value of the objective function
    def objective_value
      dblptr = FFI::MemoryPointer.new :pointer
      ret = Gurobi.GRBgetdblattr @ptr, Gurobi::GRB_DBL_ATTR_OBJVAL, dblptr
      fail if ret != 0
      dblptr.read_double
    end

    def set_variable_lower_bound(var_index, lb)
      set_double_attribute Gurobi::GRB_DBL_ATTR_LB, var_index, lb
    end

    def set_variable_upper_bound(var_index, ub)
      set_double_attribute Gurobi::GRB_DBL_ATTR_UB, var_index, ub
    end

    def variable_value(var)
      dblptr = FFI::MemoryPointer.new :pointer
      Gurobi.GRBgetdblattrarray @ptr, Gurobi::GRB_DBL_ATTR_X,
                                var.index, 1, dblptr
      value = dblptr.read_array_of_double(1)[0]

      case var.type
      when :integer
        value.round
      when :binary
        [false, true][value.round]
      else
        value
      end
    end

    private

    # Free the model
    def self.finalize(ptr)
      proc { Gurobi.GRBfreemodel ptr }
    end

    # Add multiple variables to the model simultaneously
    def add_variables(vars)
      objective_buffer = FFI::MemoryPointer.new :double, vars.length
      objective_buffer.write_array_of_double vars.map(&:coefficient)

      lb_buffer = FFI::MemoryPointer.new :double, vars.length
      lb_buffer.write_array_of_double vars.map(&:lower_bound)

      ub_buffer = FFI::MemoryPointer.new :double, vars.length
      ub_buffer.write_array_of_double vars.map(&:upper_bound)

      type_buffer = FFI::MemoryPointer.new :char, vars.length
      type_buffer.write_array_of_char vars.map { |var| gurobi_type(var.type) }

      names = array_to_pointers_to_names vars
      names_buffer = FFI::MemoryPointer.new :pointer, vars.length
      names_buffer.write_array_of_pointer names

      ret = Gurobi.GRBaddvars @ptr, vars.length, 0, nil, nil, nil,
                              objective_buffer, lb_buffer, ub_buffer,
                              type_buffer, names_buffer

      fail if ret != 0

      # Store all the variables in the model
      vars.each { |var| store_variable var }
    end

    # Add a new variable to the model
    def add_variable(var)
      ret = Gurobi.GRBaddvar @ptr, 0, nil, nil, var.coefficient,
                             var.lower_bound, var.upper_bound,
                             gurobi_type(var.type), var.name
      fail if ret != 0

      store_variable var
    end

    # Save the variable to the model and update the variable pointers
    def store_variable(var)
      # Update the variable to track the index in the model
      var.instance_variable_set :@model, self
      var.instance_variable_set :@index, @var_count
      @var_count += 1

      @variables << var
    end

    # Add multiple constraints at once
    def add_constraints(constrs)
      cbeg = []
      cind = []
      cval = []
      constrs.each_with_index.map do |constr, i|
        cbeg << cind.length
        constr.expression.terms.each do |var, coeff|
          cind << var.instance_variable_get(:@index)
          cval << coeff
        end
      end

      cbeg_buffer = FFI::MemoryPointer.new :pointer, cbeg.length
      cbeg_buffer.write_array_of_int cbeg

      cind_buffer = FFI::MemoryPointer.new :pointer, cind.length
      cind_buffer.write_array_of_int cind

      cval_buffer = FFI::MemoryPointer.new :pointer, cval.length
      cval_buffer.write_array_of_double cval

      sense_buffer = FFI::MemoryPointer.new :pointer, constrs.length
      sense_buffer.write_array_of_char(constrs.map do |c|
        gurobi_sense(c.sense)
      end)

      rhs_buffer = FFI::MemoryPointer.new :pointer, constrs.length
      rhs_buffer.write_array_of_double constrs.map(&:rhs)

      names = array_to_pointers_to_names constrs
      names_buffer = FFI::MemoryPointer.new :pointer, constrs.length
      names_buffer.write_array_of_pointer names

      ret = Gurobi.GRBaddconstrs @ptr, constrs.length, cind.length,
                                 cbeg_buffer, cind_buffer, cval_buffer,
                                 sense_buffer, rhs_buffer, names_buffer
      fail if ret != 0
    end

    # Add a new constraint to the model
    def add_constraint(constr)
      terms = constr.expression.terms
      indexes_buffer = FFI::MemoryPointer.new :int, terms.length
      indexes_buffer.write_array_of_int(terms.each_key.map do |var|
        var.instance_variable_get(:@index)
      end)

      values_buffer = FFI::MemoryPointer.new :double, terms.length
      values_buffer.write_array_of_double terms.values

      ret = Gurobi.GRBaddconstr @ptr, terms.length,
                                indexes_buffer, values_buffer,
                                gurobi_sense(constr.sense),
                                constr.rhs, constr.name
      fail if ret != 0

      @constraints << constr
    end

    def set_double_attribute(name, var_index, value)
      buffer = FFI::MemoryPointer.new :double, 1
      buffer.write_array_of_double [value]
      ret = Gurobi.GRBsetdblattrarray @ptr, name, var_index, 1, buffer
      fail if ret != 0
    end

    # Convert an array of objects to an FFI array of
    # memory pointers to the names of each object
    def array_to_pointers_to_names(arr)
      arr.map do |obj|
        obj.name.nil? ? nil : FFI::MemoryPointer.from_string(obj.name)
      end
    end

    def gurobi_sense(sense)
      sense.to_s[0].ord
    end

    def gurobi_type(type)
      case type
      when :integer
        Gurobi::GRB_INTEGER.ord
      when :binary
        Gurobi::GRB_BINARY.ord
      when :continuous
        Gurobi::GRB_CONTINUOUS.ord
      else
        fail type
      end
    end
  end
end
