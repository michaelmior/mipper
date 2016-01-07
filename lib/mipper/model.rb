module MIPPeR
  class Model
    attr_reader :variables, :constraints

    def initialize
      @sense = :min

      @var_count = 0
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
      fail NotImplementedError
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
      fail NotImplementedError
    end

    # Compute an irreducible inconsistent subsytem for the model
    def compute_IIS
      fail NotImplementedError
    end

    # The value of the objective function
    def objective_value
      fail NotImplementedError
    end
  end
end
