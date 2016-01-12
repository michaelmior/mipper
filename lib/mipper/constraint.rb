module MIPPeR
  class Constraint
    attr_reader :expression, :sense, :rhs, :name

    def initialize(expr, sense, rhs, name = nil)
      @expression = expr
      @sense = sense
      @rhs = rhs
      @name = name

      # Store this constraint for each associated variable
      @expression.terms.each_key do |var|
        var.constraints << self
      end
    end
  end
end
