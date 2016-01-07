require_relative 'ext'

module MIPPeR
  class Environment
    attr_reader :ptr

    def initialize
      # Create a new environment object
      @ptr = FFI::MemoryPointer.new :pointer
      Gurobi.GRBloadenv @ptr, nil
      @ptr = @ptr.read_pointer

      # Disable output
      Gurobi.GRBsetintparam @ptr, GRB_INT_PAR_OUTPUTFLAG, 0

      # Ensure the environment is freed
      ObjectSpace.define_finalizer self, self.class.finalize(@ptr)
    end

    # Free the environment
    def self.finalize(ptr)
      proc { Gurobi.GRBfreeenv ptr }
    end
  end
end
