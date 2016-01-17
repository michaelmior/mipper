require_relative 'lp_solve/model'

begin
  require_relative 'lp_solve/ext'
rescue LoadError
  nil
end
