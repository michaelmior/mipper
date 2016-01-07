require 'minitest/autorun'
require 'mipper'

module MIPPeR
  class MIPPeRTest < MiniTest::Test
    def setup
      env = MIPPeR::Environment.new
      @model = MIPPeR::Model.new env
    end

    def test_mip
      x = MIPPeR::Variable.new(0, 1, 1, MIPPeR::GRB_BINARY, 'x')
      y = MIPPeR::Variable.new(0, 1, 1, MIPPeR::GRB_BINARY, 'y')
      z = MIPPeR::Variable.new(0, 1, 2, MIPPeR::GRB_BINARY, 'z')
      vars = [x, y, z]
      vars.each { |var| @model << var }
      @model.set_sense MIPPeR::GRB_MAXIMIZE
      @model.update

      @model << MIPPeR::Constraint.new(x + y * 2 + z * 3,
                                       MIPPeR::GRB_LESS_EQUAL, 4.0, 'c0')
      @model << MIPPeR::Constraint.new(x + y,
                                       MIPPeR::GRB_GREATER_EQUAL, 1.0, 'c1')

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

    def test_store_variables
      x = Variable.new 0, 1, 0, GRB_BINARY, 'x'
      @model << x
      @model.update

      assert_equal @model.variables, [x]
    end

    def test_nil_value_unsolved
      x = Variable.new 0, 1, 0, GRB_BINARY, 'x'
      @model << x

      assert_nil x.value
    end

    def test_inspect_expr_skip_zeros
      var = Variable.new 0, 1, 1, GRB_CONTINUOUS, 'x'
      @model << var
      @model.update

      constr = Constraint.new var * 1, GRB_GREATER_EQUAL, 0
      @model << constr

      @model.update
      @model.set_sense MIPPeR::GRB_MINIMIZE
      @model.optimize

      assert_equal constr.expression.inspect, ''
    end

    def test_set_variable_bounds
      var = Variable.new 0, 1, 1, GRB_CONTINUOUS, 'x'
      @model << var
      @model.update
      var.upper_bound = 5

      @model.update
      @model.set_sense MIPPeR::GRB_MAXIMIZE
      @model.optimize

      assert_in_delta var.value, 5, 0.001
    end

    def test_compute_iis
      var = Variable.new 0, 1, 1, GRB_CONTINUOUS, 'x'
      @model << var
      @model.update

      # These two constraints cannot be satisfied
      @model << Constraint.new(var * 1, GRB_EQUAL, 0)
      @model << Constraint.new(var * 1, GRB_EQUAL, 1)
      @model.update

      @model.optimize
      @model.compute_IIS
    end

    def test_expr_add_expr
      x = MIPPeR::Variable.new(0, 1, 1, MIPPeR::GRB_BINARY, 'x')
      y = MIPPeR::Variable.new(0, 1, 1, MIPPeR::GRB_BINARY, 'y')
      expr = LinExpr.new({x => 1.0})
      expr.add LinExpr.new({y => 1.0})

      assert_equal expr.terms, { x => 1.0, y => 1.0}
    end

    def test_expr_add_var
      x = MIPPeR::Variable.new(0, 1, 1, MIPPeR::GRB_BINARY, 'x')
      y = MIPPeR::Variable.new(0, 1, 1, MIPPeR::GRB_BINARY, 'y')
      expr = LinExpr.new({x => 1.0})
      expr.add y

      assert_equal expr.terms, { x => 1.0, y => 1.0}
    end
  end
end
