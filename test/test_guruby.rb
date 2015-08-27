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

      assert_in_delta @model.objective_value, 3, 0.001
    end

    def test_inspect_var
      var = Variable.new 0, 1, 1, GRB_BINARY, 'x'
      @model << var
      @model.update
      @model.optimize

      assert_equal var.inspect, 'x = false'
    end

    def test_inspect_unknown_var
      var = Variable.new 0, 1, 0, GRB_BINARY, 'x'

      assert_equal var.inspect, 'x = ?'
    end

    def test_inspect_expr_simple
      x = Variable.new 0, 1, 0, GRB_BINARY, 'x'
      y = Variable.new 0, 1, 0, GRB_BINARY, 'y'

      assert_equal (x + y).inspect, 'x + y'
    end

    def test_inspect_expr_coeffs
      x = Variable.new 0, 1, 0, GRB_BINARY, 'x'
      y = Variable.new 0, 1, 0, GRB_BINARY, 'y'

      assert_equal (x * 2 + y).inspect, 'x * 2 + y'
    end
  end
end
