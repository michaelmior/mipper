module Guruby
  class Environment
    attr_reader :ptr

    def initialize
      # Create a new environment object
      @ptr = FFI::MemoryPointer.new :pointer
      Gurobi.GRBloadenv @ptr, nil
      @ptr = @ptr.read_pointer

      # Ensure the environment is freed
      ObjectSpace.define_finalizer self, self.class.finalize(@ptr)
    end

    # Free the environment
    def self.finalize(ptr)
      proc { Gurobi.GRBfreeenv ptr }
    end
  end
end
