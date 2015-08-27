Gem::Specification.new do |s|
  s.name        = 'guruby'
  s.version     = '0.0.2'
  s.license     = 'GPLv3'

  s.summary     = 'A Ruby interface to the Gurobi solver'
  s.description = 'Guruby is a Ruby interface to the Gurobi solver'

  s.authors     = ['Michael Mior']
  s.email       = 'michael.mior@gmail.com'
  s.files       = Dir.glob 'lib/**/*.rb'
  s.homepage    = 'https://github.com/michaelmior/guruby'

  s.add_runtime_dependency 'ffi', '~> 1.9'
end
