module Guruby
  class LinExpr
    attr_reader :terms

    def initialize(terms = {})
      @terms = terms
    end

    # Add two {LinExpr}s
    def +(other)
      case other
      when LinExpr
        # Add the terms of two expressions
        # For now, this assumes variables are not duplicated
        LinExpr.new(@terms.merge(other.terms) { |_, c1, c2| c1 + c2 })
      when Variable
        # Add the variable to the expression
        self + other * 1.0
      else
        fail TypeError unless other.is_a? LinExpr
      end
    end
  end
end
