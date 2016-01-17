module MIPPeR
  class GLPKModel < Model
    attr_reader :ptr

    def initialize
      fail unless MIPPeR.const_defined?(:GLPK)

      super

      @var_count = 0
      @constr_count = 0

      # Constraint matrix initialization (see #add_constraints)
      @ia = [0]
      @ja = [0]
      @ar = [0]

      # Disable terminal output
      GLPK.glp_term_out GLPK::GLP_OFF

      # Construct a new model
      @ptr = FFI::AutoPointer.new GLPK.glp_create_prob,
                                  GLPK.method(:glp_delete_prob)
    end

    # Write the model to a file in CPLEX LP format
    def write_lp(filename)
      ret = GLPK.glp_write_lp @ptr, 0, filename
      fail if ret != 0
    end

    # Write the model to a file in MPS format
    def write_mps(filename)
      ret = GLPK.glp_write_mps @ptr, GLPK::GLP_MPS_FILE, nil, filename
      fail if ret != 0
    end

    # Set the sense of the model
    def sense=(sense)
      @sense = sense
      sense = sense == :min ? GLPK::GLP_MIN : GLPK::GLP_MAX
      GLPK.glp_set_obj_dir @ptr, sense
    end

    # Optimize the model
    def optimize
      # Ensure pending variables and constraints are added
      update

      # Run the solver and save the status for later
      iocp = GLPK::IOCP.new
      GLPK.glp_init_iocp iocp
      iocp[:presolve] = GLPK::GLP_ON
      status = GLPK.glp_intopt(@ptr, iocp)

      save_solution status
    end

    def set_variable_bounds(var_index, lb, ub)
      # Determine the type of the variable bounds
      if lb == ub
        type = GLPK::GLP_FX
      elsif lb.finite?
        type = ub.finite? ? GLPK::GLP_DB : GLPK::GLP_LO
      else
        type = ub.finite? ? GLPK::GLP_UP : GLPK::GLP_FR
      end

      # Set the bounds on the variable
      GLPK.glp_set_col_bnds(@ptr, var_index, type, lb, ub)
    end

    protected

    # Add multiple variables to the model simultaneously
    def add_variables(vars)
      # Store all the variables in the model
      GLPK.glp_add_cols(@ptr, vars.length)
      vars.each { |var| store_variable var }
    end

    # Add multiple constraints at once
    def add_constraints(constrs)
      GLPK.glp_add_rows(@ptr, constrs.length)

      # Store each constraint and initialize a matrix used to hold
      # the coefficients of each value in the constraint matrix
      #
      # * ia - row (constraint) index
      # * ja - column (variable) index
      # * ar - constraint coefficient
      constrs.each do |constr|
        store_constraint constr
        constr.expression.terms.each do |var, coeff|
          @ia << constr.instance_variable_get(:@index)
          @ja << var.instance_variable_get(:@index)
          @ar << coeff
        end
      end

      ia_buffer = build_pointer_array @ia, :int
      ja_buffer = build_pointer_array @ja, :int
      ar_buffer = build_pointer_array @ar, :double

      GLPK.glp_load_matrix(@ptr, @ar.length - 1, ia_buffer, ja_buffer,
                           ar_buffer)

      @constraints.concat constrs
    end

    private

    # Save the solution to the model for access later
    def save_solution(status)
      status = case status
               when 0, GLPK::GLP_EMIPGAP
                 :optimized
               when GLPK::GLP_EBOUND, GLPK::GLP_EROOT, GLPK::GLP_ENOPFS
                 :invalid
               else
                 :unknown
               end

      if status == :optimized
        objective_value = GLPK.glp_mip_obj_val @ptr
        variable_values = Hash[@variables.map do |var|
          value = GLPK.glp_mip_col_val(@ptr, var.index)
          [var.name, value]
        end]
      else
        objective_value = nil
        variable_values = {}
      end

      @solution = Solution.new status, objective_value, variable_values
    end

    # Save the constraint to the model and update the constraint pointers
    def store_constraint(constr)
      # Update the constraint to track the index in the model
      index = @constr_count + 1
      constr.instance_variable_set :@model, self
      constr.instance_variable_set :@index, index
      @constr_count += 1

      # Set constraint properties
      GLPK.glp_set_row_name(@ptr, index, constr.name)

      case constr.sense
      when :==
        lb = ub = constr.rhs
        type = GLPK::GLP_FX
      when :>=
        lb = constr.rhs
        ub = Float::INFINITY
        type = GLPK::GLP_LO
      when :<=
        lb = -Float::INFINITY
        ub = constr.rhs
        type = GLPK::GLP_UP
      end
      GLPK.glp_set_row_bnds(@ptr, index, type, lb, ub)
    end

    # Save the variable to the model and update the variable pointers
    def store_variable(var)
      # Update the variable to track the index in the model
      index = @var_count + 1
      var.instance_variable_set :@model, self
      var.instance_variable_set :@index, index
      @var_count += 1

      @variables << var

      # Set variable properties
      GLPK.glp_set_col_name(@ptr, index, var.name)
      GLPK.glp_set_col_kind(@ptr, index, glpk_type(var.type))
      GLPK.glp_set_obj_coef(@ptr, index, var.coefficient)
      set_variable_bounds index, var.lower_bound, var.upper_bound
    end

    # Get the constant GLPK uses to represent our variable types
    def glpk_type(type)
      case type
      when :integer
        GLPK::GLP_IV
      when :binary
        GLPK::GLP_BV
      when :continuous
        GLPK::GLP_CV
      else
        fail type
      end
    end
  end
end
