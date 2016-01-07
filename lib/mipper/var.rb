module MIPPeR
  class Variable
    attr_reader :lower_bound, :upper_bound, :coefficient, :type, :name, :model

    def initialize(lb, ub, coeff, type, name = nil)
      @lower_bound = lb
      @upper_bound = ub
      @coefficient = coeff
      @type = type
      @name = name

      # These will be populated when this is added to a model
      @model = nil
      @index = nil
    end

    # Set the variable lower bound
    def lower_bound=(lb)
      set_double_attribute GRB_DBL_ATTR_LB, lb
      @lower_bound = lb
    end

    # Set the variable upper bound
    def upper_bound=(ub)
      set_double_attribute GRB_DBL_ATTR_UB, ub
      @upper_bound = ub
    end

    # Get the final value of this variable
    def value
      # Model must be solved to have a value
      return nil unless @model && @model.status == GRB_OPTIMAL

      dblptr = FFI::MemoryPointer.new :pointer
      Gurobi::GRBgetdblattrarray @model.instance_variable_get(:@ptr),
                                 GRB_DBL_ATTR_X, @index, 1, dblptr
      value = dblptr.read_array_of_double(1)[0]

      case @type
      when GRB_INTEGER
        value.round
      when GRB_BINARY
        [false, true][value.round]
      else
        value
      end
    end

    # Create a {LinExpr} consisting of a single term
    # which is this variable multiplied by a constant
    def *(coeff)
      fail TypeError unless coeff.is_a? Numeric

      LinExpr.new({ self => coeff })
    end

    def +(other)
      case other
      when LinExpr
        other + self * 1.0
      when Variable
        LinExpr.new({self => 1.0, other => 1.0})
      else
        fail TypeError
      end
    end

    # Produce the name of the variable and the value if the model is solved
    def inspect
      if @model && @model.status == GRB_OPTIMAL
        value = self.value
      else
        value = '?'
      end

      "#{@name} = #{value}"
    end

    private

    def set_double_attribute(name, value)
      buffer = FFI::MemoryPointer.new :double, 1
      buffer.write_array_of_double [value]
      ret = Gurobi.GRBsetdblattrarray @model.ptr, name, @index, 1, buffer
      fail if ret != 0
    end
  end
end
