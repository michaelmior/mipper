module MIPPeR
  module GLPK
    class IOCP < FFI::Struct
      layout :msg_lev, :int,
        :br_tech, :int,
        :bt_tech, :int,
        :tol_int, :double,
        :tol_obj, :double,
        :tm_lim, :int,
        :out_frq, :int,
        :out_dly, :int,
        :cb_func, callback([:pointer, :pointer], :void),
        :cb_info, :pointer,
        :cb_size, :int,
        :pp_tech, :int,
        :mip_gap, :double,
        :mir_cuts, :int,
        :gmi_cuts, :int,
        :cov_cuts, :int,
        :clq_cuts, :int,
        :presolve, :int,
        :binarize, :int,
        :alien, :int,
        :foo_bar, [:double, 29]
    end
  end
end
