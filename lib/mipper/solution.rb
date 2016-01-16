module MIPPeR
  class Solution
    attr_accessor :status, :objective_value, :variable_values

    def initialize(status, objective_value, variable_values)
      @status = status
      @objective_value = objective_value
      @variable_values = variable_values
    end
  end
end
