# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'kats_theme'
  s.version     = '0.0.2'
  s.summary     = 'A spree commerce and refinery theme'
  s.homepage    = 'http://webjuice.co'

  s.author        = 'Buddhi De Silva'
  s.email         = 'buddhi@webjuice.co'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'
end