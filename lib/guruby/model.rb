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

    # Free the model
    def self.finalize(ptr)
      proc { Gurobi.GRBfreemodel ptr }
    end
  end
end
