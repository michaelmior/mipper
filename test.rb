require_relative 'lib/guruby'

env = Guruby::Environment.new
model = Guruby::Model.new env

model.add_var 0, 1, 1, Guruby::GRB_BINARY, 'x'
model.add_var 0, 1, 1, Guruby::GRB_BINARY, 'y'
model.add_var 0, 1, 2, Guruby::GRB_BINARY, 'z'
model.set_sense Guruby::GRB_MAXIMIZE
model.update

model.add_constraint [0, 1, 2], [1, 2, 3], Guruby::GRB_LESS_EQUAL, 4.0, 'c0'
model.add_constraint [0, 1], [1, 1], Guruby::GRB_GREATER_EQUAL, 1.0, 'c1'
model.update

model.write '/tmp/test.lp'

model.optimize

p model.status
