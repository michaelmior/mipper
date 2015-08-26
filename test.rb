require_relative 'lib/guruby'

env = Guruby::Environment.new
model = Guruby::Model.new env

model.add_var 0, 1, 0, GRB_INTEGER, 'var'
model.update
model.set_sense GRB_MAXIMIZE
p model.status
