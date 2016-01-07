module MIPPeR
  class Constraint
    attr_reader :expression, :sense, :rhs, :name

    def initialize(expr, sense, rhs, name = nil)
      @expression = expr
      @sense = sense
      @rhs = rhs
      @name = name
    end
  end
end
