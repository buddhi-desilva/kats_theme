# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.platform        = Gem::Platform::RUBY
  s.name            = 'kats_theme'
  s.version         = '0.1.0'
  s.summary         = 'A spree commerce and refinery theme'
  s.homepage        = 'http://webjuice.co'

  s.author          = 'WebJuice'
  s.email           = 'buddhi@webjuice.co'

  s.files           = `git ls-files`.split("\n")
  s.require_path    = 'lib'
  
  s.add_dependency    'spree', '~> 1.2.0'
end