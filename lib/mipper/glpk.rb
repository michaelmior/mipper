require_relative 'glpk/model'

begin
  require_relative 'glpk/ext'
rescue LoadError
  nil
end
