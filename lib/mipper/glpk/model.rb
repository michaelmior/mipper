module MIPPeR
  class GLPKModel < Model
    attr_reader :ptr

    def initialize
      super

      @var_count = 0
      @constr_count = 0

      # Disable terminal output
      GLPK.glp_term_out GLPK::GLP_OFF

      # Construct a new model
      @ptr = FFI::AutoPointer.new GLPK.glp_create_prob,
                                  GLPK.method(:glp_delete_prob)
    end

    # Write the model to a file
    def write(filename)
      ret = GLPK.glp_write_prob @ptr, 0, filename
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
      ret = GLPK.glp_simplex @ptr, nil
      fail if ret != 0
      @status = GLPK.glp_intopt @ptr, nil
    end

    # Get the status of the model
    def status
      case @status
      when 0, GLPK::GLP_EMIPGAP
        :optimized
      when GLPK::GLP_EBOUND, GLPK::GLP_EROOT, GLPK::GLP_ENOPFS
        :invalid
      else
        :unknown
      end
    end

    # The value of the objective function
    def objective_value
      GLPK.glp_mip_obj_val @ptr
    end

    # Get the value of a variable from the model
    def variable_value(var)
      GLPK.glp_mip_col_val(@ptr, var.index)
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
      ia = [0]
      ja = [0]
      ar = [0]
      constrs.each do |constr|
        store_constraint constr
        constr.expression.terms.each do |var, coeff|
          ia << constr.instance_variable_get(:@index)
          ja << var.instance_variable_get(:@index)
          ar << coeff
        end
      end

      ia_buffer = FFI::MemoryPointer.new :pointer, ia.length
      ia_buffer.write_array_of_int ia
      ja_buffer = FFI::MemoryPointer.new :pointer, ja.length
      ja_buffer.write_array_of_int ja
      ar_buffer = FFI::MemoryPointer.new :pointer, ar.length
      ar_buffer.write_array_of_double ar

      GLPK.glp_load_matrix(@ptr, ar.length - 1, ia_buffer, ja_buffer,
                           ar_buffer)
    end

    private

    # Save the constraint to the model and update the constraint pointers
    def store_constraint(constr)
      # Update the constraint to track the index in the model
      index = @constr_count + 1
      constr.instance_variable_set :@model, self
      constr.instance_variable_set :@index, index
      @constr_count += 1

      @constraints << constr

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

      # Determine the type of the variable bounds
      if var.lower_bound == var.upper_bound
        type = GLPK::GLP_FX
      elsif var.lower_bound.finite?
        type = var.upper_bound.finite? ? GLPK::GLP_DB : GLPK::GLP_LO
      else
        type = var.upper_bound.finite? ? GLPK::GLP_UP : GLPK::GLP_FR
      end

      # Set the bounds on the variable
      GLPK.glp_set_col_bnds(@ptr, index, type,
                            var.lower_bound, var.upper_bound)
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
