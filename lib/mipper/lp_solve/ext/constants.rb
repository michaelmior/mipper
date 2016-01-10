begin
  if( ! defined?(HEADER_lp_lib) || HEADER_lp_lib.nil? )     # 2
    HEADER_lp_lib = nil     # 3
    begin
    if( false ) # !defined?( _WINDOWS && !defined _WIN32 && !defined WIN32) && !  _WINDOWS && !defined _WIN32 && !defined WIN32.nil?     # 59
      end
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 61
    DoMatrixRounding = nil     # 76
    DoBorderRounding = nil     # 77
    Phase1EliminateRedundant = nil     # 78
    FixViolatedOptimal = nil     # 79
    ImproveSolutionPrecision = nil     # 80
    ResetMinitOnReinvert = nil     # 84
    UseMilpExpandedRCF = nil     # 88
    LegacySlackDefinition = nil     # 91
    begin
      FULLYBOUNDEDSIMPLEX = FALSE
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 98
    begin
      libBLAS = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 103
    begin
      libnameBLAS = "myBLAS"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 104
    begin
    if( !defined?( LoadInverseLib) && !  LoadInverseLib.nil? )     # 109
        begin
          LoadInverseLib = TRUE
        rescue NameError => e
          raise e if( $DEBUG )
        end     # 110
      end
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 111
    begin
      DEF_OBJINBASIS = TRUE
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 114
    begin
      INVERSE_NONE = -1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 116
    begin
      INVERSE_LEGACY = 0
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 117
    begin
      INVERSE_ETAPFI = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 118
    begin
      INVERSE_LUMOD = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 119
    begin
      INVERSE_LUSOL = 3
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 120
    begin
      INVERSE_GLPKLU = 4
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 121
    begin
      if( ! defined?(RoleIsExternalInvEngine) || RoleIsExternalInvEngine.nil? )     # 123
      end
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 129
    begin
    if( !defined?( LoadLanguageLib) && !  LoadLanguageLib.nil? )     # 134
        begin
          LoadLanguageLib = TRUE
        rescue NameError => e
          raise e if( $DEBUG )
        end     # 135
      end
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 136
    ExcludeNativeLanguage = nil     # 137
    begin
      LANGUAGE_NONE = -1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 139
    begin
      LANGUAGE_LEGACYLP = 0
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 140
    begin
      LANGUAGE_CPLEXLP = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 141
    begin
      LANGUAGE_MPSX = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 142
    begin
      LANGUAGE_LPFML = 3
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 143
    begin
      LANGUAGE_MATHPROG = 4
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 144
    begin
      LANGUAGE_AMPL = 5
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 145
    begin
      LANGUAGE_GAMS = 6
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 146
    begin
      LANGUAGE_ZIMPL = 7
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 147
    begin
      LANGUAGE_S = 8
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 148
    begin
      LANGUAGE_R = 9
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 149
    begin
      LANGUAGE_MATLAB = 10
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 150
    begin
      LANGUAGE_OMATRIX = 11
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 151
    begin
      LANGUAGE_SCILAB = 12
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 152
    begin
      LANGUAGE_OCTAVE = 13
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 153
    begin
      LANGUAGE_EMPS = 14
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 154
    begin
      if( ! defined?(RoleIsExternalLanguageEngine) || RoleIsExternalLanguageEngine.nil? )     # 156
      end
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 162
    begin
      OriginalPARAM = 0
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 167
    begin
      ProductionPARAM = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 168
    begin
      ChvatalPARAM = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 169
    begin
      LoosePARAM = 3
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 170
    begin
    if( 1 )     # 171
      else     # 173
      end
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 175
    begin
      if( ! defined?(Paranoia) || Paranoia.nil? )     # 180
      end
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 184
    begin
      MAJORVERSION = 5
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 189
    begin
      MINORVERSION = 5
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 190
    begin
      RELEASE = 0
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 191
    begin
      BUILD = 13
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 192
    begin
      BFPVERSION = 12
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 193
    begin
      XLIVERSION = 12
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 194
    begin
    if( (LoadInverseLib == TRUE) || (LoadLanguageLib == TRUE) )     # 210
      end
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 216
    begin
      if( ! defined?(BFP_CALLMODEL) || BFP_CALLMODEL.nil? )     # 218
      end
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 224
    begin
      if( ! defined?(XLI_CALLMODEL) || XLI_CALLMODEL.nil? )     # 225
      end
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 227
    begin
      REGISTER = register
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 229
    begin
      SIMPLEX_UNDEFINED = 0
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 234
    begin
      SIMPLEX_Phase1_PRIMAL = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 235
    begin
      SIMPLEX_Phase1_DUAL = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 236
    begin
      SIMPLEX_Phase2_PRIMAL = 4
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 237
    begin
      SIMPLEX_Phase2_DUAL = 8
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 238
    begin
      SIMPLEX_DYNAMIC = 16
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 239
    begin
      SIMPLEX_AUTODUALIZE = 32
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 240
    begin
      SIMPLEX_PRIMAL_PRIMAL = (SIMPLEX_Phase1_PRIMAL + SIMPLEX_Phase2_PRIMAL)
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 242
    begin
      SIMPLEX_DUAL_PRIMAL = (SIMPLEX_Phase1_DUAL   + SIMPLEX_Phase2_PRIMAL)
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 243
    begin
      SIMPLEX_PRIMAL_DUAL = (SIMPLEX_Phase1_PRIMAL + SIMPLEX_Phase2_DUAL)
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 244
    begin
      SIMPLEX_DUAL_DUAL = (SIMPLEX_Phase1_DUAL   + SIMPLEX_Phase2_DUAL)
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 245
    begin
      SIMPLEX_DEFAULT = (SIMPLEX_DUAL_PRIMAL)
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 246
    begin
      ISREAL = 0
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 249
    begin
      ISINTEGER = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 250
    begin
      ISSEMI = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 251
    begin
      ISSOS = 4
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 252
    begin
      ISSOSTEMPINT = 8
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 253
    begin
      ISGUB = 16
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 254
    begin
      PRESOLVE_NONE = 0
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 257
    begin
      PRESOLVE_ROWS = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 258
    begin
      PRESOLVE_COLS = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 259
    begin
      PRESOLVE_LINDEP = 4
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 260
    begin
      PRESOLVE_AGGREGATE = 8
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 261
    begin
      PRESOLVE_SPARSER = 16
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 262
    begin
      PRESOLVE_SOS = 32
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 263
    begin
      PRESOLVE_REDUCEMIP = 64
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 264
    begin
      PRESOLVE_KNAPSACK = 128
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 265
    begin
      PRESOLVE_ELIMEQ2 = 256
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 266
    begin
      PRESOLVE_IMPLIEDFREE = 512
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 267
    begin
      PRESOLVE_REDUCEGCD = 1024
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 268
    begin
      PRESOLVE_PROBEFIX = 2048
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 269
    begin
      PRESOLVE_PROBEREDUCE = 4096
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 270
    begin
      PRESOLVE_ROWDOMINATE = 8192
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 271
    begin
      PRESOLVE_COLDOMINATE = 16384
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 272
    begin
      PRESOLVE_MERGEROWS = 32768
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 273
    begin
      PRESOLVE_IMPLIEDSLK = 65536
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 274
    begin
      PRESOLVE_COLFIXDUAL = 131072
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 275
    begin
      PRESOLVE_BOUNDS = 262144
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 276
    begin
      PRESOLVE_LASTMASKMODE = (PRESOLVE_DUALS - 1)
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 277
    begin
      PRESOLVE_DUALS = 524288
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 278
    begin
      PRESOLVE_SENSDUALS = 1048576
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 279
    begin
      CRASH_NONE = 0
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 282
    begin
      CRASH_NONBASICBOUNDS = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 283
    begin
      CRASH_MOSTFEASIBLE = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 284
    begin
      CRASH_LEASTDEGENERATE = 3
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 285
    begin
      INITSOL_SHIFTZERO = 0
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 288
    begin
      INITSOL_USEZERO = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 289
    begin
      INITSOL_ORIGINAL = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 290
    begin
      ANTIDEGEN_NONE = 0
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 294
    begin
      ANTIDEGEN_FIXEDVARS = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 295
    begin
      ANTIDEGEN_COLUMNCHECK = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 296
    begin
      ANTIDEGEN_STALLING = 4
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 297
    begin
      ANTIDEGEN_NUMFAILURE = 8
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 298
    begin
      ANTIDEGEN_LOSTFEAS = 16
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 299
    begin
      ANTIDEGEN_INFEASIBLE = 32
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 300
    begin
      ANTIDEGEN_DYNAMIC = 64
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 301
    begin
      ANTIDEGEN_DURINGBB = 128
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 302
    begin
      ANTIDEGEN_RHSPERTURB = 256
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 303
    begin
      ANTIDEGEN_BOUNDFLIP = 512
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 304
    begin
      ANTIDEGEN_DEFAULT = (ANTIDEGEN_FIXEDVARS | ANTIDEGEN_STALLING )
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 305
    begin
      NEUTRAL = 0
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 308
    begin
      CRITICAL = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 309
    begin
      SEVERE = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 310
    begin
      IMPORTANT = 3
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 311
    begin
      NORMAL = 4
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 312
    begin
      DETAILED = 5
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 313
    begin
      FULL = 6
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 314
    begin
      MSG_NONE = 0
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 317
    begin
      MSG_PRESOLVE = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 318
    begin
      MSG_ITERATION = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 319
    begin
      MSG_INVERT = 4
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 320
    begin
      MSG_LPFEASIBLE = 8
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 321
    begin
      MSG_LPOPTIMAL = 16
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 322
    begin
      MSG_LPEQUAL = 32
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 323
    begin
      MSG_LPBETTER = 64
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 324
    begin
      MSG_MILPFEASIBLE = 128
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 325
    begin
      MSG_MILPEQUAL = 256
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 326
    begin
      MSG_MILPBETTER = 512
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 327
    begin
      MSG_MILPSTRATEGY = 1024
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 328
    begin
      MSG_MILPOPTIMAL = 2048
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 329
    begin
      MSG_PERFORMANCE = 4096
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 330
    begin
      MSG_INITPSEUDOCOST = 8192
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 331
    begin
      MPSFIXED = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 334
    begin
      MPSFREE = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 335
    begin
      MPSUNDEF = -4
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 338
    begin
      MPSNAME = -3
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 339
    begin
      MPSOBJSENSE = -2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 340
    begin
      MPSOBJNAME = -1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 341
    begin
      MPSROWS = 0
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 342
    begin
      MPSCOLUMNS = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 343
    begin
      MPSRHS = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 344
    begin
      MPSBOUNDS = 3
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 345
    begin
      MPSRANGES = 4
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 346
    begin
      MPSSOS = 5
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 347
    begin
      MPSVARMASK = "%-8s"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 349
    begin
      MPSVALUEMASK = "%12g"
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 350
    begin
      ROWTYPE_EMPTY = 0
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 353
    begin
      ROWTYPE_LE = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 354
    begin
      ROWTYPE_GE = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 355
    begin
      ROWTYPE_EQ = 3
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 356
    begin
      ROWTYPE_CONSTRAINT = ROWTYPE_EQ
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 357
    begin
      ROWTYPE_OF = 4
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 358
    begin
      ROWTYPE_INACTIVE = 8
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 359
    begin
      ROWTYPE_RELAX = 16
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 360
    begin
      ROWTYPE_GUB = 32
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 361
    begin
      ROWTYPE_OFMAX = (ROWTYPE_OF + ROWTYPE_GE)
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 362
    begin
      ROWTYPE_OFMIN = (ROWTYPE_OF + ROWTYPE_LE)
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 363
    begin
      ROWTYPE_CHSIGN = ROWTYPE_GE
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 364
    begin
      FR = ROWTYPE_EMPTY
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 367
    begin
      LE = ROWTYPE_LE
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 368
    begin
      GE = ROWTYPE_GE
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 369
    begin
      EQ = ROWTYPE_EQ
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 370
    begin
      OF = ROWTYPE_OF
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 371
    begin
      ROWCLASS_Unknown = 0
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 374
    begin
      ROWCLASS_Objective = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 375
    begin
      ROWCLASS_GeneralREAL = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 376
    begin
      ROWCLASS_GeneralMIP = 3
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 377
    begin
      ROWCLASS_GeneralINT = 4
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 378
    begin
      ROWCLASS_GeneralBIN = 5
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 379
    begin
      ROWCLASS_KnapsackINT = 6
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 380
    begin
      ROWCLASS_KnapsackBIN = 7
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 381
    begin
      ROWCLASS_SetPacking = 8
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 382
    begin
      ROWCLASS_SetCover = 9
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 383
    begin
      ROWCLASS_GUB = 10
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 384
    begin
      ROWCLASS_MAX = ROWCLASS_GUB
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 385
    begin
      SCAN_USERVARS = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 388
    begin
      SCAN_SLACKVARS = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 389
    begin
      SCAN_ARTIFICIALVARS = 4
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 390
    begin
      SCAN_PARTIALBLOCK = 8
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 391
    begin
      USE_BASICVARS = 16
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 392
    begin
      USE_NONBASICVARS = 32
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 393
    begin
      SCAN_NORMALVARS = (SCAN_USERVARS + SCAN_ARTIFICIALVARS)
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 394
    begin
      SCAN_ALLVARS = (SCAN_SLACKVARS + SCAN_USERVARS + SCAN_ARTIFICIALVARS)
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 395
    begin
      USE_ALLVARS = (USE_BASICVARS + USE_NONBASICVARS)
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 396
    begin
      OMIT_FIXED = 64
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 397
    begin
      OMIT_NONFIXED = 128
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 398
    begin
      IMPROVE_NONE = 0
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 401
    begin
      IMPROVE_SOLUTION = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 402
    begin
      IMPROVE_DUALFEAS = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 403
    begin
      IMPROVE_THETAGAP = 4
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 404
    begin
      IMPROVE_BBSIMPLEX = 8
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 405
    begin
      IMPROVE_DEFAULT = (IMPROVE_DUALFEAS + IMPROVE_THETAGAP)
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 406
    begin
      IMPROVE_INVERSE = (IMPROVE_SOLUTION + IMPROVE_THETAGAP)
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 407
    begin
      SCALE_NONE = 0
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 410
    begin
      SCALE_EXTREME = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 411
    begin
      SCALE_RANGE = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 412
    begin
      SCALE_MEAN = 3
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 413
    begin
      SCALE_GEOMETRIC = 4
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 414
    begin
      SCALE_FUTURE1 = 5
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 415
    begin
      SCALE_FUTURE2 = 6
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 416
    begin
      SCALE_CURTISREID = 7
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 417
    begin
      SCALE_LINEAR = 0
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 420
    begin
      SCALE_QUADRATIC = 8
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 421
    begin
      SCALE_LOGARITHMIC = 16
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 422
    begin
      SCALE_USERWEIGHT = 31
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 423
    begin
      SCALE_MAXTYPE = (SCALE_QUADRATIC-1)
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 424
    begin
      SCALE_POWER2 = 32
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 427
    begin
      SCALE_EQUILIBRATE = 64
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 428
    begin
      SCALE_INTEGERS = 128
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 429
    begin
      SCALE_DYNUPDATE = 256
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 430
    begin
      SCALE_ROWSONLY = 512
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 431
    begin
      SCALE_COLSONLY = 1024
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 432
    begin
      SCALEMODEL_EQUILIBRATED = (SCALE_LINEAR+SCALE_EXTREME+SCALE_INTEGERS)
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 435
    begin
      SCALEMODEL_GEOMETRIC = (SCALE_LINEAR+SCALE_GEOMETRIC+SCALE_INTEGERS)
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 436
    begin
      SCALEMODEL_ARITHMETIC = (SCALE_LINEAR+SCALE_MEAN+SCALE_INTEGERS)
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 437
    begin
      SCALEMODEL_DYNAMIC = (SCALEMODEL_GEOMETRIC+SCALE_EQUILIBRATE)
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 438
    begin
      SCALEMODEL_CURTISREID = (SCALE_CURTISREID+SCALE_INTEGERS+SCALE_POWER2)
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 439
    begin
      ITERATE_MAJORMAJOR = 0
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 442
    begin
      ITERATE_MINORMAJOR = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 443
    begin
      ITERATE_MINORRETRY = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 444
    begin
      PRICER_FIRSTINDEX = 0
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 447
    begin
      PRICER_DANTZIG = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 448
    begin
      PRICER_DEVEX = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 449
    begin
      PRICER_STEEPESTEDGE = 3
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 450
    begin
      PRICER_LASTOPTION = PRICER_STEEPESTEDGE
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 451
    begin
      PRICER_RANDFACT = 0.1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 454
    begin
      DEVEX_RESTARTLIMIT = 1.0e+09
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 455
    begin
      DEVEX_MINVALUE = 0.000
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 456
    begin
      PRICE_PRIMALFALLBACK = 4
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 459
    begin
      PRICE_MULTIPLE = 8
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 460
    begin
      PRICE_PARTIAL = 16
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 461
    begin
      PRICE_ADAPTIVE = 32
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 462
    begin
      PRICE_HYBRID = 64
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 463
    begin
      PRICE_RANDOMIZE = 128
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 464
    begin
      PRICE_AUTOPARTIAL = 256
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 465
    begin
      PRICE_AUTOMULTIPLE = 512
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 466
    begin
      PRICE_LOOPLEFT = 1024
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 467
    begin
      PRICE_LOOPALTERNATE = 2048
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 468
    begin
      PRICE_HARRISTWOPASS = 4096
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 469
    begin
      PRICE_FORCEFULL = 8192
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 470
    begin
      PRICE_TRUENORMINIT = 16384
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 471
    begin
    if( defined?( _PRICE_NOBOUNDFLIP) && !  _PRICE_NOBOUNDFLIP.nil? )     # 474
        begin
          PRICE_NOBOUNDFLIP = 65536
        rescue NameError => e
          raise e if( $DEBUG )
        end     # 475
      end
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 476
    begin
      PRICE_STRATEGYMASK = (PRICE_PRIMALFALLBACK +                                   PRICE_MULTIPLE + PRICE_PARTIAL +                                   PRICE_ADAPTIVE + PRICE_HYBRID +                                   PRICE_RANDOMIZE + PRICE_AUTOPARTIAL + PRICE_AUTOMULTIPLE +                                   PRICE_LOOPLEFT + PRICE_LOOPALTERNATE +                                   PRICE_HARRISTWOPASS +                                   PRICE_FORCEFULL + PRICE_TRUENORMINIT)
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 484
    begin
      BB_REAL = 0
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 487
    begin
      BB_INT = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 488
    begin
      BB_SC = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 489
    begin
      BB_SOS = 3
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 490
    begin
      BB_GUB = 4
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 491
    begin
      NODE_FIRSTSELECT = 0
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 494
    begin
      NODE_GAPSELECT = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 495
    begin
      NODE_RANGESELECT = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 496
    begin
      NODE_FRACTIONSELECT = 3
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 497
    begin
      NODE_PSEUDOCOSTSELECT = 4
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 498
    begin
      NODE_PSEUDONONINTSELECT = 5
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 499
    begin
      NODE_PSEUDOFEASSELECT = (NODE_PSEUDONONINTSELECT+NODE_WEIGHTREVERSEMODE)
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 500
    begin
      NODE_PSEUDORATIOSELECT = 6
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 501
    begin
      NODE_USERSELECT = 7
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 502
    begin
      NODE_STRATEGYMASK = (NODE_WEIGHTREVERSEMODE-1)
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 503
    begin
      NODE_WEIGHTREVERSEMODE = 8
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 504
    begin
      NODE_BRANCHREVERSEMODE = 16
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 505
    begin
      NODE_GREEDYMODE = 32
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 506
    begin
      NODE_PSEUDOCOSTMODE = 64
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 507
    begin
      NODE_DEPTHFIRSTMODE = 128
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 508
    begin
      NODE_RANDOMIZEMODE = 256
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 509
    begin
      NODE_GUBMODE = 512
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 510
    begin
      NODE_DYNAMICMODE = 1024
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 511
    begin
      NODE_RESTARTMODE = 2048
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 512
    begin
      NODE_BREADTHFIRSTMODE = 4096
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 513
    begin
      NODE_AUTOORDER = 8192
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 514
    begin
      NODE_RCOSTFIXING = 16384
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 515
    begin
      NODE_STRONGINIT = 32768
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 516
    begin
      BRANCH_CEILING = 0
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 518
    begin
      BRANCH_FLOOR = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 519
    begin
      BRANCH_AUTOMATIC = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 520
    begin
      BRANCH_DEFAULT = 3
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 521
    begin
      ACTION_NONE = 0
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 524
    begin
      ACTION_ACTIVE = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 525
    begin
      ACTION_REBASE = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 526
    begin
      ACTION_RECOMPUTE = 4
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 527
    begin
      ACTION_REPRICE = 8
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 528
    begin
      ACTION_REINVERT = 16
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 529
    begin
      ACTION_TIMEDREINVERT = 32
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 530
    begin
      ACTION_ITERATE = 64
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 531
    begin
      ACTION_RESTART = 255
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 532
    begin
      UNKNOWNERROR = -5
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 535
    begin
      DATAIGNORED = -4
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 536
    begin
      NOBFP = -3
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 537
    begin
      NOMEMORY = -2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 538
    begin
      NOTRUN = -1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 539
    begin
      OPTIMAL = 0
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 540
    begin
      SUBOPTIMAL = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 541
    begin
      INFEASIBLE = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 542
    begin
      UNBOUNDED = 3
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 543
    begin
      DEGENERATE = 4
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 544
    begin
      NUMFAILURE = 5
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 545
    begin
      USERABORT = 6
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 546
    begin
      TIMEOUT = 7
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 547
    begin
      RUNNING = 8
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 548
    begin
      PRESOLVED = 9
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 549
    begin
      PROCFAIL = 10
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 552
    begin
      PROCBREAK = 11
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 553
    begin
      FEASFOUND = 12
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 554
    begin
      NOFEASFOUND = 13
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 555
    begin
      FATHOMED = 14
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 556
    begin
      SWITCH_TO_PRIMAL = 20
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 559
    begin
      SWITCH_TO_DUAL = 21
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 560
    begin
      SINGULAR_BASIS = 22
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 561
    begin
      LOSTFEAS = 23
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 562
    begin
      MATRIXERROR = 24
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 563
    begin
      OF_RELAXED = 0
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 566
    begin
      OF_INCUMBENT = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 567
    begin
      OF_WORKING = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 568
    begin
      OF_USERBREAK = 3
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 569
    begin
      OF_HEURISTIC = 4
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 570
    begin
      OF_DUALLIMIT = 5
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 571
    begin
      OF_DELTA = 8
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 572
    begin
      OF_PROJECTED = 16
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 573
    begin
      OF_TEST_BT = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 575
    begin
      OF_TEST_BE = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 576
    begin
      OF_TEST_NE = 3
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 577
    begin
      OF_TEST_WE = 4
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 578
    begin
      OF_TEST_WT = 5
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 579
    begin
      OF_TEST_RELGAP = 8
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 580
    begin
      MAT_START_SIZE = 10000
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 584
    begin
      DELTACOLALLOC = 100
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 585
    begin
      DELTAROWALLOC = 100
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 586
    begin
      RESIZEFACTOR = 4
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 587
    begin
      DEF_PARTIALBLOCKS = 10
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 590
    begin
      DEF_MAXRELAX = 7
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 591
    begin
      DEF_MAXPIVOTRETRY = 10
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 592
    begin
      DEF_MAXSINGULARITIES = 10
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 593
    begin
      MAX_MINITUPDATES = 60
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 594
    begin
      MIN_REFACTFREQUENCY = 5
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 596
    begin
      LAG_SINGULARLIMIT = 5
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 598
    begin
      MIN_TIMEPIVOT = 5.0e-02
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 602
    begin
      MAX_STALLCOUNT = 12
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 606
    begin
      MAX_RULESWITCH = 5
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 608
    begin
      DEF_TIMEDREFACT = AUTOMATIC
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 610
    begin
      DEF_SCALINGLIMIT = 5
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 613
    begin
      DEF_NEGRANGE = -1.0e+06
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 615
    begin
      DEF_BB_LIMITLEVEL = -50
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 617
    begin
      MAX_FRACSCALE = 6
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 620
    begin
      RANDSCALE = 100
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 621
    begin
      DOUBLEROUND = 0.0e-02
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 622
    begin
      DEF_EPSMACHINE = 2.22e-16
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 624
    begin
      MIN_STABLEPIVOT = 5.0
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 625
    begin
      PREC_REDUCEDCOST = nil # lp->epsvalue
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 630
    begin
      PREC_IMPROVEGAP = nil # lp->epsdual
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 631
    begin
      PREC_SUBSTFEASGAP = nil # lp->epsprimal
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 632
    begin
    if( 1 )     # 633
      else     # 635
      end
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 637
    begin
      LIMIT_ABS_REL = 10.0
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 638
    begin
      EPS_TIGHT = 0
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 643
    begin
      EPS_MEDIUM = 1
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 644
    begin
      EPS_LOOSE = 2
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 645
    begin
      EPS_BAGGY = 3
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 646
    begin
      EPS_DEFAULT = EPS_TIGHT
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 647
    begin
    if( ActivePARAM==ProductionPARAM )     # 650
        begin
          DEF_INFINITE = 1.0e+30
        rescue NameError => e
          raise e if( $DEBUG )
        end     # 652
        begin
          DEF_EPSVALUE = 1.0e-12
        rescue NameError => e
          raise e if( $DEBUG )
        end     # 653
        begin
          DEF_EPSPRIMAL = 1.0e-10
        rescue NameError => e
          raise e if( $DEBUG )
        end     # 654
        begin
          DEF_EPSDUAL = 1.0e-09
        rescue NameError => e
          raise e if( $DEBUG )
        end     # 655
        begin
          DEF_EPSPIVOT = 2.0e-07
        rescue NameError => e
          raise e if( $DEBUG )
        end     # 656
        begin
          DEF_PERTURB = 1.0e-05
        rescue NameError => e
          raise e if( $DEBUG )
        end     # 657
        begin
          DEF_EPSSOLUTION = 1.0e-05
        rescue NameError => e
          raise e if( $DEBUG )
        end     # 659
        begin
          DEF_EPSINT = 1.0e-07
        rescue NameError => e
          raise e if( $DEBUG )
        end     # 660
      elsif( ActivePARAM==OriginalPARAM )     # 662
        begin
          DEF_INFINITE = 1.0e+24
        rescue NameError => e
          raise e if( $DEBUG )
        end     # 664
        begin
          DEF_EPSVALUE = 1.0e-08
        rescue NameError => e
          raise e if( $DEBUG )
        end     # 665
        begin
          DEF_EPSPRIMAL = 5.01e-07
        rescue NameError => e
          raise e if( $DEBUG )
        end     # 666
        begin
          DEF_EPSDUAL = 1.0e-06
        rescue NameError => e
          raise e if( $DEBUG )
        end     # 667
        begin
          DEF_EPSPIVOT = 1.0e-04
        rescue NameError => e
          raise e if( $DEBUG )
        end     # 668
        begin
          DEF_PERTURB = 1.0e-05
        rescue NameError => e
          raise e if( $DEBUG )
        end     # 669
        begin
          DEF_EPSSOLUTION = 1.0e-02
        rescue NameError => e
          raise e if( $DEBUG )
        end     # 671
        begin
          DEF_EPSINT = 1.0e-03
        rescue NameError => e
          raise e if( $DEBUG )
        end     # 672
      elsif( ActivePARAM==ChvatalPARAM )     # 674
        begin
          DEF_INFINITE = 1.0e+30
        rescue NameError => e
          raise e if( $DEBUG )
        end     # 676
        begin
          DEF_EPSVALUE = 1.0e-10
        rescue NameError => e
          raise e if( $DEBUG )
        end     # 677
        begin
          DEF_EPSPRIMAL = 10e-07
        rescue NameError => e
          raise e if( $DEBUG )
        end     # 678
        begin
          DEF_EPSDUAL = 10e-05
        rescue NameError => e
          raise e if( $DEBUG )
        end     # 679
        begin
          DEF_EPSPIVOT = 10e-05
        rescue NameError => e
          raise e if( $DEBUG )
        end     # 680
        begin
          DEF_PERTURB = 10e-03
        rescue NameError => e
          raise e if( $DEBUG )
        end     # 681
        begin
          DEF_EPSSOLUTION = 1.0e-05
        rescue NameError => e
          raise e if( $DEBUG )
        end     # 683
        begin
          DEF_EPSINT = 5.0e-03
        rescue NameError => e
          raise e if( $DEBUG )
        end     # 684
      elsif( ActivePARAM==LoosePARAM )     # 686
        begin
          DEF_INFINITE = 1.0e+30
        rescue NameError => e
          raise e if( $DEBUG )
        end     # 688
        begin
          DEF_EPSVALUE = 1.0e-10
        rescue NameError => e
          raise e if( $DEBUG )
        end     # 689
        begin
          DEF_EPSPRIMAL = 5.01e-08
        rescue NameError => e
          raise e if( $DEBUG )
        end     # 690
        begin
          DEF_EPSDUAL = 1.0e-07
        rescue NameError => e
          raise e if( $DEBUG )
        end     # 691
        begin
          DEF_EPSPIVOT = 1.0e-05
        rescue NameError => e
          raise e if( $DEBUG )
        end     # 692
        begin
          DEF_PERTURB = 1.0e-05
        rescue NameError => e
          raise e if( $DEBUG )
        end     # 693
        begin
          DEF_EPSSOLUTION = 1.0e-05
        rescue NameError => e
          raise e if( $DEBUG )
        end     # 695
        begin
          DEF_EPSINT = 1.0e-04
        rescue NameError => e
          raise e if( $DEBUG )
        end     # 696
      end
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 698
    begin
      DEF_MIP_GAP = 1.0e-11
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 701
    begin
      SCALEDINTFIXRANGE = 1.6
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 702
    begin
      MIN_SCALAR = 1.0e-10
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 704
    begin
      MAX_SCALAR = 1.0e+10
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 705
    begin
      DEF_SCALINGEPS = 1.0e-02
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 706
    begin
      DEF_LAGACCEPT = 1.0e-03
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 708
    begin
      DEF_LAGCONTRACT = 0.90
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 709
    begin
      DEF_LAGMAXITERATIONS = 100
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 710
    begin
      DEF_PSEUDOCOSTUPDATES = 7
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 712
    begin
      DEF_PSEUDOCOSTRESTART = 0.15
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 714
    begin
      DEF_MAXPRESOLVELOOPS = 0
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 716
    begin
      if( ! defined?(LINEARSEARCH) || LINEARSEARCH.nil? )     # 792
        begin
          LINEARSEARCH = 0
        rescue NameError => e
          raise e if( $DEBUG )
        end     # 793
      end
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 794
    begin
    if( LoadInverseLib == TRUE )     # 1620
      end
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 1626
    begin
    if( LoadLanguageLib == TRUE )     # 1663
      end
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 1669
    begin
      if( defined?(__cplusplus) && ! __cplusplus.nil? )     # 1707
      end
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 1709
    begin
      if( defined?(__cplusplus) && ! __cplusplus.nil? )     # 2125
      end
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 2127
    begin
    if( defined?( develop) && !  develop.nil? )     # 2274
      end
    rescue NameError => e
      raise e if( $DEBUG )
    end     # 2282
  end
rescue NameError => e
  raise e if( $DEBUG )
end     # 2284
