require_relative 'ext'

module Guruby
  class Model
    attr_reader :ptr

    def initialize(env)
      @ptr = FFI::MemoryPointer.new :pointer
      Gurobi.GRBnewmodel env.ptr, @ptr, 'model', 0, nil, nil, nil, nil, nil
      @ptr = @ptr.read_pointer

      # Ensure the model is freed
      ObjectSpace.define_finalizer self, self.class.finalize(@ptr)

      @var_count = 0
    end

    # Add new objects (variables and constraints) to the model
    def <<(obj)
      case obj
      when Variable
        add_variable obj
      when Constraint
        add_constraint obj
      else
        fail TypeError
      end
    end

    # Update the model
    def update
      Gurobi.GRBupdatemodel @ptr
    end

    # Write the model to a file
    def write(filename)
      Gurobi.GRBwrite @ptr, filename
    end

    # Set the sense of the model
    def set_sense(sense)
      Gurobi.GRBsetintattr @ptr, GRB_INT_ATTR_MODELSENSE, sense
    end

    # Optimize the model
    def optimize
      Gurobi.GRBoptimize @ptr
    end

    # Get the status of the model
    def status
      intptr = FFI::MemoryPointer.new :pointer
      Gurobi.GRBgetintattr @ptr, GRB_INT_ATTR_STATUS, intptr
      intptr.read_int
    end

    # The value of the objective function
    def objective_value
      dblptr = FFI::MemoryPointer.new :pointer
      Gurobi.GRBgetdblattr @ptr, GRB_DBL_ATTR_OBJVAL, dblptr
      dblptr.read_double
    end

    private

    # Free the model
    def self.finalize(ptr)
      proc { Gurobi.GRBfreemodel ptr }
    end

    # Add a new variable to the model
    def add_variable(var)
      Gurobi.GRBaddvar @ptr, 0, nil, nil, var.coefficient,
        var.lower_bound, var.upper_bound, var.type.ord, var.name

      # Update the variable to track the index in the model
      var.instance_variable_set :@model, self
      var.instance_variable_set :@index, @var_count
      @var_count += 1
    end

    # Add a new constraint to the model
    def add_constraint(constr)
      terms = constr.expression.terms
      indexes_buffer = FFI::MemoryPointer.new :int, terms.length
      indexes_buffer.write_array_of_int(terms.map do |term|
        term.variable.instance_variable_get(:@index)
      end)

      values_buffer = FFI::MemoryPointer.new :double, terms.length
      values_buffer.write_array_of_double terms.map(&:coefficient)

      Gurobi.GRBaddconstr @ptr, terms.length,
        indexes_buffer, values_buffer,
        constr.sense.ord, constr.rhs, constr.name
    end

  end
end
