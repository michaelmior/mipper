require_relative 'lib/guruby'

env = Guruby::Environment.new
model = Guruby::Model.new env

Gurobi.GRBaddvar model.ptr, 0, nil, nil, 0, 0, 1, 'I'.ord, 'var'
