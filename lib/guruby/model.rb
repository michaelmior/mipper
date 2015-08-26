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

    # Update the model
    def update
      Gurobi.GRBupdatemodel @ptr
    end

    # Set the sense of the model
    def set_sense(sense)
      Gurobi.GRBsetintattr @ptr, GRB_INT_ATTR_MODELSENSE, sense
    end

    # Free the model
    def self.finalize(ptr)
      proc { Gurobi.GRBfreemodel ptr }
    end
  end
end
