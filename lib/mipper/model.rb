module MIPPeR
  class Model
    attr_reader :variables, :constraints

    def initialize
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
    end

    # Write the model to a file
    def write(filename)
      fail NotImplementedError
    end

    # Set the sense of the model
    def sense=(sense)
      fail NotImplementedError
    end

    # Optimize the model
    def optimize
      fail NotImplementedError
    end

    # Get the status of the model
    def status
      :unknown
    end

    # Compute an irreducible inconsistent subsytem for the model
    def compute_IIS
      fail NotImplementedError
    end

    # The value of the objective function
    def objective_value
      fail NotImplementedError
    end

    protected

    def add_variable(var)
      add_variables([var])
    end

    def add_constraint(constr)
      add_constraints([constr])
    end

    def set_variable_bounds(var_index, ub, lb)
      fail NotImplementedError
    end

    def variable_value(var)
      fail NotImplementedError
    end
  end
end
