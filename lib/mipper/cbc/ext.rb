require 'ffi'

module MIPPeR
  module Cbc
    extend FFI::Library
    ffi_lib_flags :now, :global
    ffi_lib 'z', 'bz2', 'CoinUtils', 'Osi', 'Clp', 'OsiClp', 'Cgl', 'Cbc',
            'CbcSolver'

    attach_function :Cbc_newModel, [], :pointer
    attach_function :Cbc_deleteModel, [:pointer], :void
    attach_function :Cbc_loadProblem, [:pointer, :int, :int, :pointer, :pointer,
                                       :pointer, :pointer, :pointer, :pointer,
                                       :pointer, :pointer], :void
    attach_function :Cbc_setColName, [:pointer, :int, :string], :void
    attach_function :Cbc_setRowName, [:pointer, :int, :string], :void
    attach_function :Cbc_setObjSense, [:pointer, :double], :void
    attach_function :Cbc_setRowLower, [:pointer, :int, :double], :void
    attach_function :Cbc_setRowUpper, [:pointer, :int, :double], :void
    attach_function :Cbc_setObjCoeff, [:pointer, :int, :double], :void
    attach_function :Cbc_setColLower, [:pointer, :int, :double], :void
    attach_function :Cbc_setColUpper, [:pointer, :int, :double], :void
    attach_function :Cbc_setContinuous, [:pointer, :int], :void
    attach_function :Cbc_setInteger, [:pointer, :int], :void
    attach_function :Cbc_solve, [:pointer], :int
    attach_function :Cbc_getColSolution, [:pointer], :pointer
    attach_function :Cbc_getObjValue, [:pointer], :double
    attach_function :Cbc_status, [:pointer], :int
    attach_function :Cbc_secondaryStatus, [:pointer], :int
    attach_function :Cbc_printModel, [:pointer, :string], :void
    attach_function :Cbc_isProvenOptimal, [:pointer], :int
    attach_function :Cbc_isProvenInfeasible, [:pointer], :int
    attach_function :Cbc_isContinuousUnbounded, [:pointer], :int
    attach_function :Cbc_setParameter, [:pointer, :string, :string], :void
    attach_function :Cbc_writeMps, [:pointer, :string], :void
  end
end
