begin
  if( ! defined?(_GUROBI_C_H) || _GUROBI_C_H.nil? )     # 3
    _GUROBI_C_H = nil     # 4
    begin
    if( defined?((_WIN64) && !defined(WIN64)) && ! (_WIN64) && !defined(WIN64).nil? )     # 11
        WIN64 = nil     # 12
      end
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 13
    begin
    if( defined?((_WIN32) && !defined(_WIN64) && !defined(WIN32)) && ! (_WIN32) && !defined(_WIN64) && !defined(WIN32).nil? )     # 15
        WIN32 = nil     # 16
      end
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 17
    begin
    if( !defined?((WIN32) && !defined(WIN64)) && ! (WIN32) && !defined(WIN64).nil? )     # 19
        __cdecl = nil     # 20
        __stdcall = nil     # 21
      end
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 22
    begin
      GRB_VERSION_MAJOR = 5
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 26
    begin
      GRB_VERSION_MINOR = 6
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 27
    begin
      GRB_VERSION_TECHNICAL = 3
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 28
    begin
      DEFAULT_CS_PRIORITY = 0
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 32
    begin
      MAX_CS_PRIORITY = 100
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 33
    begin
      DEFAULT_CS_PORT = 61000
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 37
    begin
      GRB_ERROR_OUT_OF_MEMORY = 10001
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 41
    begin
      GRB_ERROR_NULL_ARGUMENT = 10002
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 42
    begin
      GRB_ERROR_INVALID_ARGUMENT = 10003
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 43
    begin
      GRB_ERROR_UNKNOWN_ATTRIBUTE = 10004
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 44
    begin
      GRB_ERROR_DATA_NOT_AVAILABLE = 10005
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 45
    begin
      GRB_ERROR_INDEX_OUT_OF_RANGE = 10006
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 46
    begin
      GRB_ERROR_UNKNOWN_PARAMETER = 10007
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 47
    begin
      GRB_ERROR_VALUE_OUT_OF_RANGE = 10008
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 48
    begin
      GRB_ERROR_NO_LICENSE = 10009
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 49
    begin
      GRB_ERROR_SIZE_LIMIT_EXCEEDED = 10010
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 50
    begin
      GRB_ERROR_CALLBACK = 10011
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 51
    begin
      GRB_ERROR_FILE_READ = 10012
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 52
    begin
      GRB_ERROR_FILE_WRITE = 10013
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 53
    begin
      GRB_ERROR_NUMERIC = 10014
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 54
    begin
      GRB_ERROR_IIS_NOT_INFEASIBLE = 10015
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 55
    begin
      GRB_ERROR_NOT_FOR_MIP = 10016
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 56
    begin
      GRB_ERROR_OPTIMIZATION_IN_PROGRESS = 10017
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 57
    begin
      GRB_ERROR_DUPLICATES = 10018
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 58
    begin
      GRB_ERROR_NODEFILE = 10019
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 59
    begin
      GRB_ERROR_Q_NOT_PSD = 10020
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 60
    begin
      GRB_ERROR_QCP_EQUALITY_CONSTRAINT = 10021
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 61
    begin
      GRB_ERROR_NETWORK = 10022
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 62
    begin
      GRB_ERROR_JOB_REJECTED = 10023
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 63
    begin
      GRB_ERROR_NOT_SUPPORTED = 10024
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 64
    begin
      GRB_LESS_EQUAL = '<'
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 68
    begin
      GRB_GREATER_EQUAL = '>'
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 69
    begin
      GRB_EQUAL = '='
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 70
    begin
      GRB_CONTINUOUS = 'C'
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 74
    begin
      GRB_BINARY = 'B'
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 75
    begin
      GRB_INTEGER = 'I'
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 76
    begin
      GRB_SEMICONT = 'S'
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 77
    begin
      GRB_SEMIINT = 'N'
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 78
    begin
      GRB_MINIMIZE = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 82
    begin
      GRB_MAXIMIZE = -1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 83
    begin
      GRB_SOS_TYPE1 = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 87
    begin
      GRB_SOS_TYPE2 = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 88
    begin
      GRB_INFINITY = 1e100
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 92
    begin
      GRB_UNDEFINED = 1e101
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 93
    begin
      GRB_MAXINT = 2000000000
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 94
    begin
      GRB_MAX_NAMELEN = 255
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 98
    begin
      GRB_MAX_STRLEN = 512
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 99
    begin
      GRB_MAX_CONCURRENT = 16
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 100
    begin
      CB_ARGS = nil # GRBmodel *model, void *cbdata, int where, void *usrdata
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 196
    begin
      GRB_INT_ATTR_NUMCONSTRS = "NumConstrs"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 228
    begin
      GRB_INT_ATTR_NUMVARS = "NumVars"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 229
    begin
      GRB_INT_ATTR_NUMSOS = "NumSOS"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 230
    begin
      GRB_INT_ATTR_NUMQCONSTRS = "NumQConstrs"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 231
    begin
      GRB_INT_ATTR_NUMNZS = "NumNZs"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 232
    begin
      GRB_INT_ATTR_NUMQNZS = "NumQNZs"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 233
    begin
      GRB_INT_ATTR_NUMQCNZS = "NumQCNZs"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 234
    begin
      GRB_INT_ATTR_NUMINTVARS = "NumIntVars"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 235
    begin
      GRB_INT_ATTR_NUMBINVARS = "NumBinVars"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 236
    begin
      GRB_STR_ATTR_MODELNAME = "ModelName"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 237
    begin
      GRB_INT_ATTR_MODELSENSE = "ModelSense"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 238
    begin
      GRB_DBL_ATTR_OBJCON = "ObjCon"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 239
    begin
      GRB_INT_ATTR_IS_MIP = "IsMIP"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 240
    begin
      GRB_INT_ATTR_IS_QP = "IsQP"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 241
    begin
      GRB_INT_ATTR_IS_QCP = "IsQCP"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 242
    begin
      GRB_STR_ATTR_SERVER = "Server"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 243
    begin
      GRB_DBL_ATTR_LB = "LB"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 247
    begin
      GRB_DBL_ATTR_UB = "UB"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 248
    begin
      GRB_DBL_ATTR_OBJ = "Obj"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 249
    begin
      GRB_CHAR_ATTR_VTYPE = "VType"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 250
    begin
      GRB_DBL_ATTR_START = "Start"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 251
    begin
      GRB_DBL_ATTR_PSTART = "PStart"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 252
    begin
      GRB_INT_ATTR_BRANCHPRIORITY = "BranchPriority"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 253
    begin
      GRB_STR_ATTR_VARNAME = "VarName"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 254
    begin
      GRB_DBL_ATTR_RHS = "RHS"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 258
    begin
      GRB_DBL_ATTR_DSTART = "DStart"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 259
    begin
      GRB_CHAR_ATTR_SENSE = "Sense"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 260
    begin
      GRB_STR_ATTR_CONSTRNAME = "ConstrName"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 261
    begin
      GRB_DBL_ATTR_QCRHS = "QCRHS"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 265
    begin
      GRB_CHAR_ATTR_QCSENSE = "QCSense"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 266
    begin
      GRB_STR_ATTR_QCNAME = "QCName"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 267
    begin
      GRB_DBL_ATTR_MAX_COEFF = "MaxCoeff"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 271
    begin
      GRB_DBL_ATTR_MIN_COEFF = "MinCoeff"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 272
    begin
      GRB_DBL_ATTR_MAX_BOUND = "MaxBound"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 273
    begin
      GRB_DBL_ATTR_MIN_BOUND = "MinBound"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 274
    begin
      GRB_DBL_ATTR_MAX_OBJ_COEFF = "MaxObjCoeff"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 275
    begin
      GRB_DBL_ATTR_MIN_OBJ_COEFF = "MinObjCoeff"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 276
    begin
      GRB_DBL_ATTR_MAX_RHS = "MaxRHS"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 277
    begin
      GRB_DBL_ATTR_MIN_RHS = "MinRHS"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 278
    begin
      GRB_DBL_ATTR_RUNTIME = "Runtime"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 282
    begin
      GRB_INT_ATTR_STATUS = "Status"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 283
    begin
      GRB_DBL_ATTR_OBJVAL = "ObjVal"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 284
    begin
      GRB_DBL_ATTR_OBJBOUND = "ObjBound"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 285
    begin
      GRB_DBL_ATTR_MIPGAP = "MIPGap"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 286
    begin
      GRB_INT_ATTR_SOLCOUNT = "SolCount"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 287
    begin
      GRB_DBL_ATTR_ITERCOUNT = "IterCount"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 288
    begin
      GRB_INT_ATTR_BARITERCOUNT = "BarIterCount"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 289
    begin
      GRB_DBL_ATTR_NODECOUNT = "NodeCount"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 290
    begin
      GRB_INT_ATTR_HASDUALNORM = "HasDualNorm"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 291
    begin
      GRB_DBL_ATTR_X = "X"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 297
    begin
      GRB_DBL_ATTR_Xn = "Xn"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 298
    begin
      GRB_DBL_ATTR_RC = "RC"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 299
    begin
      GRB_DBL_ATTR_VDUALNORM = "VDualNorm"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 300
    begin
      GRB_INT_ATTR_VBASIS = "VBasis"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 301
    begin
      GRB_DBL_ATTR_PI = "Pi"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 305
    begin
      GRB_DBL_ATTR_QCPI = "QCPi"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 306
    begin
      GRB_DBL_ATTR_SLACK = "Slack"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 307
    begin
      GRB_DBL_ATTR_QCSLACK = "QCSlack"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 308
    begin
      GRB_DBL_ATTR_CDUALNORM = "CDualNorm"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 309
    begin
      GRB_INT_ATTR_CBASIS = "CBasis"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 310
    begin
      GRB_DBL_ATTR_BOUND_VIO = "BoundVio"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 314
    begin
      GRB_DBL_ATTR_BOUND_SVIO = "BoundSVio"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 315
    begin
      GRB_INT_ATTR_BOUND_VIO_INDEX = "BoundVioIndex"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 316
    begin
      GRB_INT_ATTR_BOUND_SVIO_INDEX = "BoundSVioIndex"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 317
    begin
      GRB_DBL_ATTR_BOUND_VIO_SUM = "BoundVioSum"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 318
    begin
      GRB_DBL_ATTR_BOUND_SVIO_SUM = "BoundSVioSum"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 319
    begin
      GRB_DBL_ATTR_CONSTR_VIO = "ConstrVio"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 320
    begin
      GRB_DBL_ATTR_CONSTR_SVIO = "ConstrSVio"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 321
    begin
      GRB_INT_ATTR_CONSTR_VIO_INDEX = "ConstrVioIndex"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 322
    begin
      GRB_INT_ATTR_CONSTR_SVIO_INDEX = "ConstrSVioIndex"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 323
    begin
      GRB_DBL_ATTR_CONSTR_VIO_SUM = "ConstrVioSum"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 324
    begin
      GRB_DBL_ATTR_CONSTR_SVIO_SUM = "ConstrSVioSum"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 325
    begin
      GRB_DBL_ATTR_CONSTR_RESIDUAL = "ConstrResidual"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 326
    begin
      GRB_DBL_ATTR_CONSTR_SRESIDUAL = "ConstrSResidual"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 327
    begin
      GRB_INT_ATTR_CONSTR_RESIDUAL_INDEX = "ConstrResidualIndex"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 328
    begin
      GRB_INT_ATTR_CONSTR_SRESIDUAL_INDEX = "ConstrSResidualIndex"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 329
    begin
      GRB_DBL_ATTR_CONSTR_RESIDUAL_SUM = "ConstrResidualSum"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 330
    begin
      GRB_DBL_ATTR_CONSTR_SRESIDUAL_SUM = "ConstrSResidualSum"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 331
    begin
      GRB_DBL_ATTR_DUAL_VIO = "DualVio"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 332
    begin
      GRB_DBL_ATTR_DUAL_SVIO = "DualSVio"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 333
    begin
      GRB_INT_ATTR_DUAL_VIO_INDEX = "DualVioIndex"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 334
    begin
      GRB_INT_ATTR_DUAL_SVIO_INDEX = "DualSVioIndex"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 335
    begin
      GRB_DBL_ATTR_DUAL_VIO_SUM = "DualVioSum"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 336
    begin
      GRB_DBL_ATTR_DUAL_SVIO_SUM = "DualSVioSum"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 337
    begin
      GRB_DBL_ATTR_DUAL_RESIDUAL = "DualResidual"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 338
    begin
      GRB_DBL_ATTR_DUAL_SRESIDUAL = "DualSResidual"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 339
    begin
      GRB_INT_ATTR_DUAL_RESIDUAL_INDEX = "DualResidualIndex"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 340
    begin
      GRB_INT_ATTR_DUAL_SRESIDUAL_INDEX = "DualSResidualIndex"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 341
    begin
      GRB_DBL_ATTR_DUAL_RESIDUAL_SUM = "DualResidualSum"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 342
    begin
      GRB_DBL_ATTR_DUAL_SRESIDUAL_SUM = "DualSResidualSum"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 343
    begin
      GRB_DBL_ATTR_INT_VIO = "IntVio"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 344
    begin
      GRB_INT_ATTR_INT_VIO_INDEX = "IntVioIndex"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 345
    begin
      GRB_DBL_ATTR_INT_VIO_SUM = "IntVioSum"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 346
    begin
      GRB_DBL_ATTR_COMPL_VIO = "ComplVio"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 347
    begin
      GRB_INT_ATTR_COMPL_VIO_INDEX = "ComplVioIndex"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 348
    begin
      GRB_DBL_ATTR_COMPL_VIO_SUM = "ComplVioSum"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 349
    begin
      GRB_DBL_ATTR_KAPPA = "Kappa"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 350
    begin
      GRB_DBL_ATTR_KAPPA_EXACT = "KappaExact"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 351
    begin
      GRB_DBL_ATTR_N2KAPPA = "N2Kappa"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 352
    begin
      GRB_DBL_ATTR_SA_OBJLOW = "SAObjLow"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 356
    begin
      GRB_DBL_ATTR_SA_OBJUP = "SAObjUp"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 357
    begin
      GRB_DBL_ATTR_SA_LBLOW = "SALBLow"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 358
    begin
      GRB_DBL_ATTR_SA_LBUP = "SALBUp"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 359
    begin
      GRB_DBL_ATTR_SA_UBLOW = "SAUBLow"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 360
    begin
      GRB_DBL_ATTR_SA_UBUP = "SAUBUp"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 361
    begin
      GRB_DBL_ATTR_SA_RHSLOW = "SARHSLow"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 362
    begin
      GRB_DBL_ATTR_SA_RHSUP = "SARHSUp"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 363
    begin
      GRB_INT_ATTR_IIS_MINIMAL = "IISMinimal"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 367
    begin
      GRB_INT_ATTR_IIS_LB = "IISLB"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 368
    begin
      GRB_INT_ATTR_IIS_UB = "IISUB"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 369
    begin
      GRB_INT_ATTR_IIS_CONSTR = "IISConstr"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 370
    begin
      GRB_INT_ATTR_IIS_SOS = "IISSOS"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 371
    begin
      GRB_INT_ATTR_IIS_QCONSTR = "IISQConstr"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 372
    begin
      GRB_INT_ATTR_TUNE_RESULTCOUNT = "TuneResultCount"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 376
    begin
      GRB_DBL_ATTR_FARKASDUAL = "FarkasDual"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 380
    begin
      GRB_DBL_ATTR_FARKASPROOF = "FarkasProof"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 381
    begin
      GRB_DBL_ATTR_UNBDRAY = "UnbdRay"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 382
    begin
      GRB_INT_ATTR_INFEASVAR = "InfeasVar"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 383
    begin
      GRB_INT_ATTR_UNBDVAR = "UnbdVar"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 384
    begin
      GRB_INT_ATTR_VARPRESTAT = "VarPreStat"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 388
    begin
      GRB_DBL_ATTR_PREFIXVAL = "PreFixVal"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 389
    begin
      GRB_CB_POLLING = 0
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 397
    begin
      GRB_CB_PRESOLVE = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 398
    begin
      GRB_CB_SIMPLEX = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 399
    begin
      GRB_CB_MIP = 3
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 400
    begin
      GRB_CB_MIPSOL = 4
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 401
    begin
      GRB_CB_MIPNODE = 5
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 402
    begin
      GRB_CB_MESSAGE = 6
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 403
    begin
      GRB_CB_BARRIER = 7
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 404
    begin
      GRB_CB_PRE_COLDEL = 1000
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 408
    begin
      GRB_CB_PRE_ROWDEL = 1001
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 409
    begin
      GRB_CB_PRE_SENCHG = 1002
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 410
    begin
      GRB_CB_PRE_BNDCHG = 1003
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 411
    begin
      GRB_CB_PRE_COECHG = 1004
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 412
    begin
      GRB_CB_SPX_ITRCNT = 2000
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 414
    begin
      GRB_CB_SPX_OBJVAL = 2001
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 415
    begin
      GRB_CB_SPX_PRIMINF = 2002
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 416
    begin
      GRB_CB_SPX_DUALINF = 2003
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 417
    begin
      GRB_CB_SPX_ISPERT = 2004
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 418
    begin
      GRB_CB_MIP_OBJBST = 3000
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 420
    begin
      GRB_CB_MIP_OBJBND = 3001
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 421
    begin
      GRB_CB_MIP_NODCNT = 3002
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 422
    begin
      GRB_CB_MIP_SOLCNT = 3003
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 423
    begin
      GRB_CB_MIP_CUTCNT = 3004
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 424
    begin
      GRB_CB_MIP_NODLFT = 3005
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 425
    begin
      GRB_CB_MIP_ITRCNT = 3006
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 426
    begin
      GRB_CB_MIPSOL_SOL = 4001
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 428
    begin
      GRB_CB_MIPSOL_OBJ = 4002
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 429
    begin
      GRB_CB_MIPSOL_OBJBST = 4003
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 430
    begin
      GRB_CB_MIPSOL_OBJBND = 4004
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 431
    begin
      GRB_CB_MIPSOL_NODCNT = 4005
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 432
    begin
      GRB_CB_MIPSOL_SOLCNT = 4006
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 433
    begin
      GRB_CB_MIPNODE_STATUS = 5001
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 435
    begin
      GRB_CB_MIPNODE_REL = 5002
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 436
    begin
      GRB_CB_MIPNODE_OBJBST = 5003
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 437
    begin
      GRB_CB_MIPNODE_OBJBND = 5004
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 438
    begin
      GRB_CB_MIPNODE_NODCNT = 5005
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 439
    begin
      GRB_CB_MIPNODE_SOLCNT = 5006
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 440
    begin
      GRB_CB_MIPNODE_BRVAR = 5007
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 441
    begin
      GRB_CB_MSG_STRING = 6001
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 443
    begin
      GRB_CB_RUNTIME = 6002
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 444
    begin
      GRB_CB_BARRIER_ITRCNT = 7001
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 446
    begin
      GRB_CB_BARRIER_PRIMOBJ = 7002
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 447
    begin
      GRB_CB_BARRIER_DUALOBJ = 7003
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 448
    begin
      GRB_CB_BARRIER_PRIMINF = 7004
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 449
    begin
      GRB_CB_BARRIER_DUALINF = 7005
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 450
    begin
      GRB_CB_BARRIER_COMPL = 7006
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 451
    begin
      GRB_FEASRELAX_LINEAR = 0
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 453
    begin
      GRB_FEASRELAX_QUADRATIC = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 454
    begin
      GRB_FEASRELAX_CARDINALITY = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 455
    begin
      GRB_LOADED = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 622
    begin
      GRB_OPTIMAL = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 623
    begin
      GRB_INFEASIBLE = 3
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 624
    begin
      GRB_INF_OR_UNBD = 4
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 625
    begin
      GRB_UNBOUNDED = 5
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 626
    begin
      GRB_CUTOFF = 6
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 627
    begin
      GRB_ITERATION_LIMIT = 7
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 628
    begin
      GRB_NODE_LIMIT = 8
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 629
    begin
      GRB_TIME_LIMIT = 9
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 630
    begin
      GRB_SOLUTION_LIMIT = 10
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 631
    begin
      GRB_INTERRUPTED = 11
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 632
    begin
      GRB_NUMERIC = 12
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 633
    begin
      GRB_SUBOPTIMAL = 13
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 634
    begin
      GRB_INPROGRESS = 14
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 635
    begin
      GRB_BASIC = 0
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 639
    begin
      GRB_NONBASIC_LOWER = -1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 640
    begin
      GRB_NONBASIC_UPPER = -2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 641
    begin
      GRB_SUPERBASIC = -3
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 642
    begin
      GRB_INT_PAR_BARITERLIMIT = "BarIterLimit"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 660
    begin
      GRB_DBL_PAR_CUTOFF = "Cutoff"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 661
    begin
      GRB_DBL_PAR_ITERATIONLIMIT = "IterationLimit"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 662
    begin
      GRB_DBL_PAR_NODELIMIT = "NodeLimit"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 663
    begin
      GRB_INT_PAR_SOLUTIONLIMIT = "SolutionLimit"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 664
    begin
      GRB_DBL_PAR_TIMELIMIT = "TimeLimit"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 665
    begin
      GRB_DBL_PAR_FEASIBILITYTOL = "FeasibilityTol"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 669
    begin
      GRB_DBL_PAR_INTFEASTOL = "IntFeasTol"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 670
    begin
      GRB_DBL_PAR_MARKOWITZTOL = "MarkowitzTol"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 671
    begin
      GRB_DBL_PAR_MIPGAP = "MIPGap"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 672
    begin
      GRB_DBL_PAR_MIPGAPABS = "MIPGapAbs"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 673
    begin
      GRB_DBL_PAR_OPTIMALITYTOL = "OptimalityTol"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 674
    begin
      GRB_DBL_PAR_PSDTOL = "PSDTol"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 675
    begin
      GRB_INT_PAR_METHOD = "Method"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 679
    begin
      GRB_DBL_PAR_PERTURBVALUE = "PerturbValue"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 680
    begin
      GRB_DBL_PAR_OBJSCALE = "ObjScale"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 681
    begin
      GRB_INT_PAR_SCALEFLAG = "ScaleFlag"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 682
    begin
      GRB_INT_PAR_SIMPLEXPRICING = "SimplexPricing"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 683
    begin
      GRB_INT_PAR_QUAD = "Quad"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 684
    begin
      GRB_INT_PAR_NORMADJUST = "NormAdjust"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 685
    begin
      GRB_INT_PAR_SIFTING = "Sifting"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 686
    begin
      GRB_INT_PAR_SIFTMETHOD = "SiftMethod"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 687
    begin
      GRB_DBL_PAR_BARCONVTOL = "BarConvTol"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 691
    begin
      GRB_INT_PAR_BARCORRECTORS = "BarCorrectors"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 692
    begin
      GRB_INT_PAR_BARHOMOGENEOUS = "BarHomogeneous"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 693
    begin
      GRB_INT_PAR_BARORDER = "BarOrder"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 694
    begin
      GRB_DBL_PAR_BARQCPCONVTOL = "BarQCPConvTol"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 695
    begin
      GRB_INT_PAR_CROSSOVER = "Crossover"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 696
    begin
      GRB_INT_PAR_CROSSOVERBASIS = "CrossoverBasis"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 697
    begin
      GRB_INT_PAR_BRANCHDIR = "BranchDir"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 701
    begin
      GRB_INT_PAR_DISCONNECTED = "Disconnected"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 702
    begin
      GRB_DBL_PAR_HEURISTICS = "Heuristics"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 703
    begin
      GRB_DBL_PAR_IMPROVESTARTGAP = "ImproveStartGap"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 704
    begin
      GRB_DBL_PAR_IMPROVESTARTTIME = "ImproveStartTime"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 705
    begin
      GRB_DBL_PAR_IMPROVESTARTNODES = "ImproveStartNodes"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 706
    begin
      GRB_INT_PAR_MINRELNODES = "MinRelNodes"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 707
    begin
      GRB_INT_PAR_MIPFOCUS = "MIPFocus"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 708
    begin
      GRB_STR_PAR_NODEFILEDIR = "NodefileDir"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 709
    begin
      GRB_DBL_PAR_NODEFILESTART = "NodefileStart"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 710
    begin
      GRB_INT_PAR_NODEMETHOD = "NodeMethod"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 711
    begin
      GRB_INT_PAR_NORELHEURISTIC = "NoRelHeuristic"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 712
    begin
      GRB_INT_PAR_PUMPPASSES = "PumpPasses"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 713
    begin
      GRB_INT_PAR_RINS = "RINS"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 714
    begin
      GRB_INT_PAR_SUBMIPNODES = "SubMIPNodes"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 715
    begin
      GRB_INT_PAR_SYMMETRY = "Symmetry"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 716
    begin
      GRB_INT_PAR_VARBRANCH = "VarBranch"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 717
    begin
      GRB_INT_PAR_SOLUTIONNUMBER = "SolutionNumber"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 718
    begin
      GRB_INT_PAR_ZEROOBJNODES = "ZeroObjNodes"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 719
    begin
      GRB_INT_PAR_CUTS = "Cuts"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 723
    begin
      GRB_INT_PAR_CLIQUECUTS = "CliqueCuts"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 725
    begin
      GRB_INT_PAR_COVERCUTS = "CoverCuts"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 726
    begin
      GRB_INT_PAR_FLOWCOVERCUTS = "FlowCoverCuts"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 727
    begin
      GRB_INT_PAR_FLOWPATHCUTS = "FlowPathCuts"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 728
    begin
      GRB_INT_PAR_GUBCOVERCUTS = "GUBCoverCuts"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 729
    begin
      GRB_INT_PAR_IMPLIEDCUTS = "ImpliedCuts"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 730
    begin
      GRB_INT_PAR_MIPSEPCUTS = "MIPSepCuts"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 731
    begin
      GRB_INT_PAR_MIRCUTS = "MIRCuts"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 732
    begin
      GRB_INT_PAR_MODKCUTS = "ModKCuts"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 733
    begin
      GRB_INT_PAR_ZEROHALFCUTS = "ZeroHalfCuts"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 734
    begin
      GRB_INT_PAR_NETWORKCUTS = "NetworkCuts"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 735
    begin
      GRB_INT_PAR_SUBMIPCUTS = "SubMIPCuts"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 736
    begin
      GRB_INT_PAR_CUTAGGPASSES = "CutAggPasses"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 738
    begin
      GRB_INT_PAR_CUTPASSES = "CutPasses"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 739
    begin
      GRB_INT_PAR_GOMORYPASSES = "GomoryPasses"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 740
    begin
      GRB_STR_PAR_SERVERPOOL = "ServerPool"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 744
    begin
      GRB_STR_PAR_SERVERPASSWORD = "ServerPassword"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 745
    begin
      GRB_INT_PAR_AGGREGATE = "Aggregate"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 749
    begin
      GRB_INT_PAR_AGGFILL = "AggFill"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 750
    begin
      GRB_INT_PAR_CONCURRENTMIP = "ConcurrentMIP"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 751
    begin
      GRB_INT_PAR_CONCURRENTMIPJOBS = "ConcurrentMIPJobs"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 752
    begin
      GRB_INT_PAR_DISPLAYINTERVAL = "DisplayInterval"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 753
    begin
      GRB_INT_PAR_DUALREDUCTIONS = "DualReductions"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 754
    begin
      GRB_DBL_PAR_FEASRELAXBIGM = "FeasRelaxBigM"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 755
    begin
      GRB_INT_PAR_IISMETHOD = "IISMethod"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 756
    begin
      GRB_INT_PAR_INFUNBDINFO = "InfUnbdInfo"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 757
    begin
      GRB_INT_PAR_LAZYCONSTRAINTS = "LazyConstraints"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 758
    begin
      GRB_STR_PAR_LOGFILE = "LogFile"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 759
    begin
      GRB_INT_PAR_LOGTOCONSOLE = "LogToConsole"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 760
    begin
      GRB_INT_PAR_MIQCPMETHOD = "MIQCPMethod"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 761
    begin
      GRB_INT_PAR_NUMERICFOCUS = "NumericFocus"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 762
    begin
      GRB_INT_PAR_NONBLOCKING = "NonBlocking"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 763
    begin
      GRB_INT_PAR_OUTPUTFLAG = "OutputFlag"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 764
    begin
      GRB_INT_PAR_PRECRUSH = "PreCrush"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 765
    begin
      GRB_INT_PAR_PREDEPROW = "PreDepRow"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 766
    begin
      GRB_INT_PAR_PREDUAL = "PreDual"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 767
    begin
      GRB_INT_PAR_PREPASSES = "PrePasses"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 768
    begin
      GRB_INT_PAR_PREQLINEARIZE = "PreQLinearize"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 769
    begin
      GRB_INT_PAR_PRESOLVE = "Presolve"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 770
    begin
      GRB_DBL_PAR_PRESOS1BIGM = "PreSOS1BigM"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 771
    begin
      GRB_DBL_PAR_PRESOS2BIGM = "PreSOS2BigM"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 772
    begin
      GRB_INT_PAR_PRESPARSIFY = "PreSparsify"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 773
    begin
      GRB_INT_PAR_QCPDUAL = "QCPDual"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 774
    begin
      GRB_STR_PAR_RESULTFILE = "ResultFile"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 775
    begin
      GRB_INT_PAR_SEED = "Seed"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 776
    begin
      GRB_INT_PAR_THREADS = "Threads"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 777
    begin
      GRB_DBL_PAR_TUNETIMELIMIT = "TuneTimeLimit"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 778
    begin
      GRB_INT_PAR_TUNERESULTS = "TuneResults"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 779
    begin
      GRB_INT_PAR_TUNETRIALS = "TuneTrials"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 780
    begin
      GRB_INT_PAR_TUNEOUTPUT = "TuneOutput"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 781
    begin
      GRB_INT_PAR_TUNEJOBS = "TuneJobs"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 782
    begin
      GRB_STR_PAR_DUMMY = "Dummy"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 783
    begin
      GRB_CUTS_AUTO = -1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 788
    begin
      GRB_CUTS_OFF = 0
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 789
    begin
      GRB_CUTS_CONSERVATIVE = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 790
    begin
      GRB_CUTS_AGGRESSIVE = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 791
    begin
      GRB_CUTS_VERYAGGRESSIVE = 3
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 792
    begin
      GRB_PRESOLVE_AUTO = -1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 794
    begin
      GRB_PRESOLVE_OFF = 0
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 795
    begin
      GRB_PRESOLVE_CONSERVATIVE = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 796
    begin
      GRB_PRESOLVE_AGGRESSIVE = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 797
    begin
      GRB_METHOD_AUTO = -1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 799
    begin
      GRB_METHOD_PRIMAL = 0
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 800
    begin
      GRB_METHOD_DUAL = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 801
    begin
      GRB_METHOD_BARRIER = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 802
    begin
      GRB_METHOD_CONCURRENT = 3
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 803
    begin
      GRB_METHOD_DETERMINISTIC_CONCURRENT = 4
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 804
    begin
      GRB_BARHOMOGENEOUS_AUTO = -1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 806
    begin
      GRB_BARHOMOGENEOUS_OFF = 0
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 807
    begin
      GRB_BARHOMOGENEOUS_ON = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 808
    begin
      GRB_MIPFOCUS_BALANCED = 0
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 810
    begin
      GRB_MIPFOCUS_FEASIBILITY = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 811
    begin
      GRB_MIPFOCUS_OPTIMALITY = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 812
    begin
      GRB_MIPFOCUS_BESTBOUND = 3
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 813
    begin
      GRB_BARORDER_AUTOMATIC = -1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 815
    begin
      GRB_BARORDER_AMD = 0
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 816
    begin
      GRB_BARORDER_NESTEDDISSECTION = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 817
    begin
      GRB_SIMPLEXPRICING_AUTO = -1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 819
    begin
      GRB_SIMPLEXPRICING_PARTIAL = 0
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 820
    begin
      GRB_SIMPLEXPRICING_STEEPEST_EDGE = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 821
    begin
      GRB_SIMPLEXPRICING_DEVEX = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 822
    begin
      GRB_SIMPLEXPRICING_STEEPEST_QUICK = 3
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 823
    begin
      GRB_VARBRANCH_AUTO = -1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 825
    begin
      GRB_VARBRANCH_PSEUDO_REDUCED = 0
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 826
    begin
      GRB_VARBRANCH_PSEUDO_SHADOW = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 827
    begin
      GRB_VARBRANCH_MAX_INFEAS = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 828
    begin
      GRB_VARBRANCH_STRONG = 3
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 829
    begin
      GRB_INT_PAR_PREMIQPMETHOD = "PreMIQPMethod"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 960
  end
rescue NameError => e
  raise e if( $DEBUG )
end     # 968
