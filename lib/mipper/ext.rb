require_relative 'ext/gurobi'

# Hide the constants inside the MIPPeR module
module MIPPeR
  module_eval File.read(File.expand_path './ext/constants.rb',
                                         File.dirname(__FILE__))
end

