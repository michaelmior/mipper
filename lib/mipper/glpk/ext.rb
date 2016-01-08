require 'ffi'

require_relative 'ext/structs'

module MIPPeR
  module GLPK
    # Hide the constants inside the MIPPeR::Gurobi module
    module_eval File.read(File.expand_path './ext/constants.rb',
                          File.dirname(__FILE__))

    extend FFI::Library
    ffi_lib 'glpk'

    attach_function :glp_create_prob, [], :pointer
    attach_function :glp_set_obj_dir, [:pointer, :int], :void
    attach_function :glp_add_rows, [:pointer, :int], :int
    attach_function :glp_add_cols, [:pointer, :int], :int
    attach_function :glp_set_row_name, [:pointer, :int, :string], :void
    attach_function :glp_set_col_name, [:pointer, :int, :string], :void
    attach_function :glp_set_row_bnds, [:pointer, :int, :int,
                                        :double, :double], :void
    attach_function :glp_set_col_bnds, [:pointer, :int, :int,
                                        :double, :double], :void
    attach_function :glp_set_obj_coef, [:pointer, :int, :double], :void
    attach_function :glp_set_mat_row, [:pointer, :int, :int,
                                       :pointer, :pointer], :void
    attach_function :glp_set_mat_col, [:pointer, :int, :int,
                                       :pointer, :pointer], :void
    attach_function :glp_load_matrix, [:pointer, :int, :pointer, :pointer,
                                       :pointer], :void
    attach_function :glp_delete_prob, [:pointer], :void
    attach_function :glp_simplex, [:pointer, :pointer], :int
    attach_function :glp_set_col_kind, [:pointer, :int, :int], :void
    attach_function :glp_intopt, [:pointer, :pointer], :int
    attach_function :glp_init_iocp, [:pointer], :void
    attach_function :glp_mip_status, [:pointer], :int
    attach_function :glp_mip_obj_val, [:pointer], :double
    attach_function :glp_mip_row_val, [:pointer, :int], :double
    attach_function :glp_mip_col_val, [:pointer, :int], :double
    attach_function :glp_write_prob, [:pointer, :int, :string], :int
    attach_function :glp_term_out, [:int], :int
  end
end
