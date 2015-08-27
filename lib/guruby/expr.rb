module Guruby
  class LinExpr
    attr_reader :terms

    def initialize(terms = [])
      @terms = terms
    end

    # Add two {LinExpr}s
    def +(other)
      fail TypeError unless other.is_a? LinExpr

      # Add the terms of two expressions
      # For now, this assumes variables are not duplicated
      LinExpr.new @terms + other.terms
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
