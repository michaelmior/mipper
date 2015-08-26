module Guruby
  class Variable
    attr_reader :lower_bound, :upper_bound, :coefficient, :type, :name, :model

    def initialize(lb, ub, coeff, type, name = '')
      @lower_bound = lb
      @upper_bound = ub
      @coefficient = coeff
      @type = type
      @name = name
      @model = nil
    end
  end
end
