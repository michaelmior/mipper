module Guruby
  class Constraint
    attr_reader :expression, :sense, :rhs, :name

    def initialize(expr, sense, rhs, name = '')
      @expression = expr
      @sense = sense
      @rhs = rhs
      @name = name
    end
  end
end
