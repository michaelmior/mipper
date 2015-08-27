require 'minitest/autorun'
require 'guruby'

module Guruby
  class GurubyTest < MiniTest::Test
    def setup
      env = Guruby::Environment.new
      @model = Guruby::Model.new env
    end

    def test_mip
      x = Guruby::Variable.new(0, 1, 1, Guruby::GRB_BINARY, 'x')
      y = Guruby::Variable.new(0, 1, 1, Guruby::GRB_BINARY, 'y')
      z = Guruby::Variable.new(0, 1, 2, Guruby::GRB_BINARY, 'z')
      vars = [x, y, z]
      vars.each { |var| @model << var }
      @model.set_sense Guruby::GRB_MAXIMIZE
      @model.update

      @model << Guruby::Constraint.new(x + y * 2 + z * 3,
                                       Guruby::GRB_LESS_EQUAL, 4.0, 'c0')
      @model << Guruby::Constraint.new(x + y,
                                       Guruby::GRB_GREATER_EQUAL, 1.0, 'c1')

      @model.update
      @model.optimize

      assert_equal x.value, true
      assert_equal y.value, false
      assert_equal z.value, true
    end
  end
end
