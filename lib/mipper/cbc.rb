require_relative 'cbc/model'

begin
  require_relative 'cbc/ext'
rescue LoadError
  nil
end
