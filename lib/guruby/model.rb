module Guruby
  class Model
    attr_reader :ptr

    def initialize(env)
      @ptr = FFI::MemoryPointer.new :pointer
      Gurobi.GRBnewmodel env.ptr, @ptr, 'model', 0, nil, nil, nil, nil, nil
      @ptr = @ptr.read_pointer

      # Ensure the model is freed
      ObjectSpace.define_finalizer self, self.class.finalize(@ptr)
    end

    # Add a new variable to the model
    def add_var(lb, ub, obj, vtype, varname = '')
      Gurobi.GRBaddvar @ptr, 0, nil, nil, obj, lb, ub, vtype.ord, varname
    end

    # Add a new constraint to the model
    def add_constraint(indexes, values, sense, rhs, name = '')
      indexes_buffer = FFI::MemoryPointer.new :int, indexes.length
      indexes_buffer.write_array_of_int indexes

      values_buffer = FFI::MemoryPointer.new :double, values.length
      values_buffer.write_array_of_double values

      Gurobi.GRBaddconstr @ptr, indexes.length, indexes_buffer, values_buffer,
                          sense.ord, rhs, name
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

    # Free the model
    def self.finalize(ptr)
      proc { Gurobi.GRBfreemodel ptr }
    end
  end
end
