# -*- encoding: utf-8 -*-
require File.expand_path( '../lib/senv/version' , __FILE__ )

Gem::Specification.new do | gem |
  gem.authors       = [ 'Ryan Cook' ]
  gem.email         = [ 'cookrn@gmail.com' ]
  gem.description   = 'Securely load per project environments.'
  gem.summary       = "senv version #{ SENV::VERSION }"
  gem.homepage      = 'https://github.com/cookrn/senv'

  gem.files         = `git ls-files`.split $\
  gem.executables   = gem.files.grep( %r{^bin/} ).map{ | f | File.basename f }
  gem.test_files    = gem.files.grep %r{^(test|spec|features)/}
  gem.name          = 'senv'
  gem.require_paths = [ 'lib' ]
  gem.version       = SENV::VERSION

  gem.add_development_dependency 'cucumber'
  gem.add_development_dependency 'minitest'
  gem.add_development_dependency 'rake'
end
