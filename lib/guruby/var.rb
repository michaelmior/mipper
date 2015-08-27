module Guruby
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

    # Get the final value of this variable
    def value
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
        other + self * 1
      when Variable
        self * 1 + other * 1
      else
        fail TypeError
      end
    end
  end
end
