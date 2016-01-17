require_relative 'gurobi/env'
require_relative 'gurobi/model'

begin
  require_relative 'gurobi/ext'
rescue LoadError
  nil
end
