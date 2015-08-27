module Guruby
  class LinExpr
    attr_reader :terms

    def initialize(terms = [])
      @terms = terms
    end

    # Add two {LinExpr}s
    def +(other)
      case other
      when LinExpr
        # Add the terms of two expressions
        # For now, this assumes variables are not duplicated
        LinExpr.new @terms + other.terms
      when Variable
        # Add the variable to the expression
        self + other * 1.0
      else
        fail TypeError unless other.is_a? LinExpr
      end
    end
  end

  class LinExprTerm
    attr_reader :variable, :coefficient

    def initialize(var, coeff)
      @variable = var
      @coefficient = coeff
    end
  end
end
