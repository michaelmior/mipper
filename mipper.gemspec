Gem::Specification.new do |s|
  s.name        = 'mipper'
  s.version     = '0.0.6'
  s.license     = 'GPLv3'

  s.summary     = 'A Ruby interface to various MIP solvers'
  s.description = 'MIPPeR is a Ruby interface to various mixed integer programming solvers'

  s.authors     = ['Michael Mior']
  s.email       = 'michael.mior@gmail.com'
  s.files       = Dir.glob 'lib/**/*.rb'
  s.homepage    = 'https://github.com/michaelmior/mipper'

  s.add_runtime_dependency 'ffi', '~> 1.9'
end
