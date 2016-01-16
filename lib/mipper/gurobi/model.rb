module MIPPeR
  # A linear programming model using the Gurobi solver
  class GurobiModel < Model
    attr_reader :ptr, :environment

    def initialize
      super

      @var_count = 0

      @environment = Gurobi::Environment.new

      @ptr = FFI::MemoryPointer.new :pointer
      Gurobi.GRBnewmodel @environment.ptr, @ptr, 'model',
                         0, nil, nil, nil, nil, nil
      @ptr = @ptr.read_pointer

      # Ensure the model is freed
      ObjectSpace.define_finalizer self, self.class.finalize(@ptr)
    end

    # Update the model
    def update
      super

      ret = Gurobi.GRBupdatemodel @ptr
      fail if ret != 0
    end

    # Write the model to a file in CPLEX LP format
    def write_lp(filename)
      Gurobi.GRBwrite @ptr, filename
    end

    # Write the model to a file in MPS format
    def write_mps(filename)
      Gurobi.GRBwrite @ptr, filename
    end

    # Set the sense of the model
    def sense=(sense)
      @sense = sense
      sense = sense == :min ? Gurobi::GRB_MINIMIZE : Gurobi::GRB_MAXIMIZE
      ret = Gurobi.GRBsetintattr @ptr, Gurobi::GRB_INT_ATTR_MODELSENSE, sense
      fail if ret != 0
    end

    # Optimize the model
    def optimize
      # Ensure pending variables and constraints are added
      update

      ret = Gurobi.GRBoptimize @ptr
      fail if ret != 0

      save_solution
    end

    # Compute an irreducible inconsistent subsytem for the model
    def compute_iis
      ret = Gurobi.GRBcomputeIIS @ptr
      fail if ret != 0
    end

    def set_variable_bounds(var_index, lb, ub)
      set_double_attribute Gurobi::GRB_DBL_ATTR_LB, var_index, lb
      set_double_attribute Gurobi::GRB_DBL_ATTR_UB, var_index, ub
    end

    protected

    # Get the status of the model
    def gurobi_status
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

    # The value of the objective function
    def gurobi_objective
      dblptr = FFI::MemoryPointer.new :pointer
      ret = Gurobi.GRBgetdblattr @ptr, Gurobi::GRB_DBL_ATTR_OBJVAL, dblptr
      fail if ret != 0
      dblptr.read_double
    end

    # Add multiple variables to the model simultaneously
    def add_variables(vars)
      objective_buffer = build_pointer_array vars.map(&:coefficient), :double
      lb_buffer = build_pointer_array vars.map(&:lower_bound), :double
      ub_buffer = build_pointer_array vars.map(&:upper_bound), :double
      type_buffer = build_pointer_array(vars.map do |var|
        gurobi_type(var.type)
      end, :char)
      names_buffer = build_pointer_array array_to_pointers_to_names(vars),
                                         :pointer

      ret = Gurobi.GRBaddvars @ptr, vars.length, 0, nil, nil, nil,
                              objective_buffer, lb_buffer, ub_buffer,
                              type_buffer, names_buffer

      fail if ret != 0

      # Store all the variables in the model
      vars.each { |var| store_variable var }

      # Update the model with variables so constraint adds succeed
      ret = Gurobi.GRBupdatemodel @ptr
      fail if ret != 0
    end

    # Add a new variable to the model
    def add_variable(var)
      ret = Gurobi.GRBaddvar @ptr, 0, nil, nil, var.coefficient,
                             var.lower_bound, var.upper_bound,
                             gurobi_type(var.type), var.name
      fail if ret != 0

      store_variable var
    end

    # Add multiple constraints at once
    def add_constraints(constrs)
      cbeg, cind, cval = build_constraint_matrix constrs

      cbeg_buffer = build_pointer_array cbeg, :int
      cind_buffer = build_pointer_array cind, :int
      cval_buffer = build_pointer_array cval, :double
      sense_buffer = build_pointer_array(constrs.map do |c|
        gurobi_sense(c.sense)
      end, :char)
      rhs_buffer = build_pointer_array constrs.map(&:rhs), :double

      names_buffer = build_pointer_array array_to_pointers_to_names(constrs),
                                         :pointer

      ret = Gurobi.GRBaddconstrs @ptr, constrs.length, cind.length,
                                 cbeg_buffer, cind_buffer, cval_buffer,
                                 sense_buffer, rhs_buffer, names_buffer
      fail if ret != 0

      @constraints.concat constrs
    end

    # Add a new constraint to the model
    def add_constraint(constr)
      terms = constr.expression.terms
      indexes_buffer = build_pointer_array(terms.each_key.map do |var|
        var.instance_variable_get(:@index)
      end, :int)
      values_buffer = build_pointer_array terms.values, :double

      ret = Gurobi.GRBaddconstr @ptr, terms.length,
                                indexes_buffer, values_buffer,
                                gurobi_sense(constr.sense),
                                constr.rhs, constr.name
      fail if ret != 0

      @constraints << constr
    end

    private

    # Free the model
    def self.finalize(ptr)
      proc { Gurobi.GRBfreemodel ptr }
    end

    # Construct a matrix of values for the given list of constraints
    def build_constraint_matrix(constrs)
      cbeg = []
      cind = []
      cval = []
      constrs.each.map do |constr|
        cbeg << cind.length
        constr.expression.terms.each do |var, coeff|
          cind << var.instance_variable_get(:@index)
          cval << coeff
        end
      end

      [cbeg, cind, cval]
    end

    # Save the solution to the model for access later
    def save_solution
      status = gurobi_status

      if status == :optimized
        objective_value = gurobi_objective
        variable_values = Hash[@variables.map do |var|
          dblptr = FFI::MemoryPointer.new :pointer
          Gurobi.GRBgetdblattrarray @ptr, Gurobi::GRB_DBL_ATTR_X,
                                    var.index, 1, dblptr
          value = dblptr.read_array_of_double(1)[0]
          [var.name, value]
        end]
      else
        objective_value = nil
        variable_values = {}
      end

      @solution = Solution.new status, objective_value, variable_values
    end

    # Save the variable to the model and update the variable pointers
    def store_variable(var)
      # Update the variable to track the index in the model
      var.instance_variable_set :@model, self
      var.instance_variable_set :@index, @var_count
      @var_count += 1

      @variables << var
    end

    def set_double_attribute(name, var_index, value)
      buffer = build_pointer_array [value], :double
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
