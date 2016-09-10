module MIPPeR
  # Stores a linear programming model for a particular solver
  class Model
    attr_reader :variables, :constraints

    def initialize
      @solution = nil
      @sense = :min

      @variables = []
      @constraints = []

      @pending_variables = []
      @pending_constraints = []
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
      update_variables
      update_constraints
    end

    # Write the model to a file in CPLEX LP format
    def write_lp(_filename)
      fail NotImplementedError
    end

    # Write the model to a file in MPS format
    def write_mps(_filename)
      fail NotImplementedError
    end

    # Set the sense of the model
    def sense=(_sense)
      fail NotImplementedError
    end

    # Optimize the model
    def optimize
      fail NotImplementedError
    end

    # Get the status of the model
    def status
      if @solution.nil?
        :unknown
      else
        @solution.status
      end
    end

    # Compute an irreducible inconsistent subsytem for the model
    def compute_iis
      fail NotImplementedError
    end

    # Get the value of the objective function from a previous solution
    def objective_value
      @solution.objective_value unless @solution.nil?
    end

    # Get the value of a variable from a previous solution
    def variable_value(var)
      @solution.variable_values[var.index] unless @solution.nil?
    end

    protected

    # Shortcut to build a C array from a Ruby array
    def build_pointer_array(array, type)
      buffer = FFI::MemoryPointer.new type, array.length
      buffer.send("write_array_of_#{type}".to_sym,  array)

      buffer
    end

    # Just add the variable as an array
    def add_variable(var)
      add_variables([var])
    end

    # Just add the constraint as an array
    def add_constraint(constr)
      add_constraints([constr])
    end

    def set_variable_bounds(_var_index, _ub, _lb)
      fail NotImplementedError
    end

    private

    # Add any pending variables to the model
    def update_variables
      if @pending_variables.length == 1
        add_variable @pending_variables.first
      elsif @pending_variables.length > 0
        add_variables @pending_variables
      end
      @pending_variables = []
    end

    # Add any pending constraints to the model
    def update_constraints
      if @pending_constraints.length == 1
        add_constraint @pending_constraints.first
      elsif @pending_constraints.length > 0
        add_constraints @pending_constraints
      end
      @pending_constraints = []
    end
  end
end
