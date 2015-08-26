require 'ffi'

module Gurobi
  extend FFI::Library
  ffi_lib '/home/mmior/apps/gurobi563/linux64/lib/libgurobi56.so'

  attach_function :GRBloadenv, [:pointer, :string], :int
  attach_function :GRBfreeenv, [:pointer], :void

  attach_function :GRBnewmodel, [:pointer, :pointer, :string, :int,
                                 :pointer, :pointer, :pointer, :pointer,
                                 :pointer], :int
  attach_function :GRBupdatemodel, [:pointer], :int
  attach_function :GRBfreemodel, [:pointer], :int

  attach_function :GRBaddvar, [:pointer, :int, :pointer, :pointer,
                               :double, :double, :double, :char, :string], :int
  attach_function :GRBaddvars, [:pointer, :int, :int, :pointer, :pointer,
                                :pointer, :pointer, :pointer, :pointer,
                                :pointer, :pointer], :int
  attach_function :GRBaddconstr, [:pointer, :int, :pointer, :pointer, :char,
                                  :double, :string], :int
  attach_function :GRBoptimize, [:pointer], :int
  attach_function :GRBwrite, [:pointer, :string], :int

  attach_function :GRBsetintattr, [:pointer, :string, :int], :int

  attach_function :GRBgetintattr, [:pointer, :string, :pointer], :int
  attach_function :GRBgetdblattr, [:pointer, :string, :pointer], :int
  attach_function :GRBgetdblattrarray, [:pointer, :string, :int, :int,
                                        :pointer], :int
end
