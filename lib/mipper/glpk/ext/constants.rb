begin
  if( ! defined?(GLPK_H) || GLPK_H.nil? )     # 25
    GLPK_H = nil     # 26
    begin
      if( defined?(__cplusplus) && ! __cplusplus.nil? )     # 31
      end
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 33
    begin
      GLP_MAJOR_VERSION = 4
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 36
    begin
      GLP_MINOR_VERSION = 49
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 37
    begin
      GLP_MIN = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 43
    begin
      GLP_MAX = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 44
    begin
      GLP_CV = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 47
    begin
      GLP_IV = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 48
    begin
      GLP_BV = 3
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 49
    begin
      GLP_FR = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 52
    begin
      GLP_LO = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 53
    begin
      GLP_UP = 3
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 54
    begin
      GLP_DB = 4
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 55
    begin
      GLP_FX = 5
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 56
    begin
      GLP_BS = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 59
    begin
      GLP_NL = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 60
    begin
      GLP_NU = 3
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 61
    begin
      GLP_NF = 4
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 62
    begin
      GLP_NS = 5
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 63
    begin
      GLP_SF_GM = 0x01
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 66
    begin
      GLP_SF_EQ = 0x10
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 67
    begin
      GLP_SF_2N = 0x20
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 68
    begin
      GLP_SF_SKIP = 0x40
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 69
    begin
      GLP_SF_AUTO = 0x80
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 70
    begin
      GLP_SOL = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 73
    begin
      GLP_IPT = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 74
    begin
      GLP_MIP = 3
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 75
    begin
      GLP_UNDEF = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 78
    begin
      GLP_FEAS = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 79
    begin
      GLP_INFEAS = 3
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 80
    begin
      GLP_NOFEAS = 4
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 81
    begin
      GLP_OPT = 5
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 82
    begin
      GLP_UNBND = 6
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 83
    begin
      GLP_BF_FT = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 89
    begin
      GLP_BF_BG = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 90
    begin
      GLP_BF_GR = 3
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 91
    begin
      GLP_MSG_OFF = 0
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 108
    begin
      GLP_MSG_ERR = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 109
    begin
      GLP_MSG_ON = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 110
    begin
      GLP_MSG_ALL = 3
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 111
    begin
      GLP_MSG_DBG = 4
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 112
    begin
      GLP_PRIMAL = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 114
    begin
      GLP_DUALP = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 115
    begin
      GLP_DUAL = 3
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 116
    begin
      GLP_PT_STD = 0x11
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 118
    begin
      GLP_PT_PSE = 0x22
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 119
    begin
      GLP_RT_STD = 0x11
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 121
    begin
      GLP_RT_HAR = 0x22
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 122
    begin
      GLP_ORD_NONE = 0
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 140
    begin
      GLP_ORD_QMD = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 141
    begin
      GLP_ORD_AMD = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 142
    begin
      GLP_ORD_SYMAMD = 3
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 143
    begin
      GLP_BR_FFV = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 154
    begin
      GLP_BR_LFV = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 155
    begin
      GLP_BR_MFV = 3
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 156
    begin
      GLP_BR_DTH = 4
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 157
    begin
      GLP_BR_PCH = 5
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 158
    begin
      GLP_BT_DFS = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 160
    begin
      GLP_BT_BFS = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 161
    begin
      GLP_BT_BLB = 3
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 162
    begin
      GLP_BT_BPH = 4
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 163
    begin
      GLP_PP_NONE = 0
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 174
    begin
      GLP_PP_ROOT = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 175
    begin
      GLP_PP_ALL = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 176
    begin
    if( 1 )     # 185
      end
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 187
    begin
      GLP_RF_REG = 0
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 197
    begin
      GLP_RF_LAZY = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 198
    begin
      GLP_RF_CUT = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 199
    begin
      GLP_RF_GMI = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 202
    begin
      GLP_RF_MIR = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 203
    begin
      GLP_RF_COV = 3
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 204
    begin
      GLP_RF_CLQ = 4
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 205
    begin
      GLP_ON = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 211
    begin
      GLP_OFF = 0
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 212
    begin
      GLP_IROWGEN = 0x01
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 215
    begin
      GLP_IBINGO = 0x02
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 216
    begin
      GLP_IHEUR = 0x03
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 217
    begin
      GLP_ICUTGEN = 0x04
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 218
    begin
      GLP_IBRANCH = 0x05
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 219
    begin
      GLP_ISELECT = 0x06
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 220
    begin
      GLP_IPREPRO = 0x07
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 221
    begin
      GLP_NO_BRNCH = 0
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 224
    begin
      GLP_DN_BRNCH = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 225
    begin
      GLP_UP_BRNCH = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 226
    begin
      GLP_EBADB = 0x01
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 229
    begin
      GLP_ESING = 0x02
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 230
    begin
      GLP_ECOND = 0x03
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 231
    begin
      GLP_EBOUND = 0x04
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 232
    begin
      GLP_EFAIL = 0x05
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 233
    begin
      GLP_EOBJLL = 0x06
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 234
    begin
      GLP_EOBJUL = 0x07
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 235
    begin
      GLP_EITLIM = 0x08
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 236
    begin
      GLP_ETMLIM = 0x09
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 237
    begin
      GLP_ENOPFS = 0x0A
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 238
    begin
      GLP_ENODFS = 0x0B
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 239
    begin
      GLP_EROOT = 0x0C
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 240
    begin
      GLP_ESTOP = 0x0D
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 241
    begin
      GLP_EMIPGAP = 0x0E
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 242
    begin
      GLP_ENOFEAS = 0x0F
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 243
    begin
      GLP_ENOCVG = 0x10
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 244
    begin
      GLP_EINSTAB = 0x11
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 245
    begin
      GLP_EDATA = 0x12
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 246
    begin
      GLP_ERANGE = 0x13
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 247
    begin
      GLP_KKT_PE = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 250
    begin
      GLP_KKT_PB = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 251
    begin
      GLP_KKT_DE = 3
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 252
    begin
      GLP_KKT_DB = 4
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 253
    begin
      GLP_KKT_CS = 5
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 254
    begin
      GLP_MPS_DECK = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 257
    begin
      GLP_MPS_FILE = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 258
    begin
      if( ! defined?(GLP_ERROR_DEFINED) || GLP_ERROR_DEFINED.nil? )     # 798
        GLP_ERROR_DEFINED = nil     # 799
      end
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 801
    begin
      glp_error = glp_error_(__FILE__, __LINE__)
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 803
    begin
      GLP_ASN_MIN = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 966
    begin
      GLP_ASN_MAX = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 967
    begin
      GLP_ASN_MMP = 3
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 968
    begin
      if( defined?(__cplusplus) && ! __cplusplus.nil? )     # 1041
      end
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 1043
  end
rescue NameError => e
  raise e if( $DEBUG )
end     # 1045
