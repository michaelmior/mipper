require 'ffi'

module MIPPeR
  module LPSolve
    # Hide the constants inside the MIPPeR::LPSolve module
    module_eval File.read(File.expand_path './ext/constants.rb',
                          File.dirname(__FILE__))

    extend FFI::Library
    ffi_lib 'lpsolve55'

    attach_function :get_objective, [:pointer], :double
    attach_function :get_ptr_primal_solution, [:pointer, :pointer], :int
    attach_function :add_constraintex, [:pointer, :int, :pointer, :pointer,
                                        :int, :double], :int
    attach_function :make_lp, [:int, :int], :pointer
    attach_function :resize_lp, [:pointer, :int, :int], :int
    attach_function :set_binary, [:pointer, :int, :int], :int
    attach_function :set_int, [:pointer, :int, :int], :int
    attach_function :set_bounds, [:pointer, :int, :double, :double], :int
    attach_function :set_col_name, [:pointer, :int, :string], :int
    attach_function :set_add_rowmode, [:pointer, :int], :int
    attach_function :set_row_name, [:pointer, :int, :string], :int
    attach_function :set_upbo, [:pointer, :int, :double], :int
    attach_function :set_lowbo, [:pointer, :int, :double], :int
    attach_function :set_obj, [:pointer, :int, :double], :int
    attach_function :solve, [:pointer], :int
    attach_function :set_sense, [:pointer, :int], :void
    attach_function :add_columnex, [:pointer, :int, :pointer, :pointer], :int
    attach_function :delete_lp, [:pointer], :int
    attach_function :get_var_primalresult, [:pointer, :int], :double
    attach_function :set_outputfile, [:pointer, :string], :int
    attach_function :get_Nrows, [:pointer], :int
  end
end
