module MIPPeR
  class Variable
    attr_accessor :constraints, :model, :index
    attr_reader :lower_bound, :upper_bound, :coefficient, :type, :name

    def initialize(lb, ub, coeff, type, name = nil)
      @lower_bound = lb
      @upper_bound = ub
      @coefficient = coeff
      @type = type
      @name = name
      @constraints = []

      # These will be populated when this is added to a model
      @model = nil
      @index = nil
    end

    # Set the variable lower bound
    def lower_bound=(lb)
      @model.set_variable_bounds @index, lb, @upper_bound unless @model.nil?
      @lower_bound = lb
    end

    # Set the variable upper bound
    def upper_bound=(ub)
      @model.set_variable_bounds @index, @lower_bound, ub unless @model.nil?
      @upper_bound = ub
    end

    # Get the final value of this variable
    def value
      # Model must be solved to have a value
      return nil unless @model && @model.status == :optimized

      value = @model.variable_value self

      case @type
      when :integer
        value.round
      when :binary
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
      if @model && @model.status == :optimized
        value = self.value
      else
        value = '?'
      end

      "#{@name} = #{value}"
    end
  end
end
