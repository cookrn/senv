# -*- encoding: utf-8 -*-
require File.expand_path( '../lib/senv/version' , __FILE__ )

Gem::Specification.new do | gem |
  gem.authors       = [ "Ryan Cook" ]
  gem.email         = [ "cookrn@gmail.com" ]
  gem.description   = "Securely load per project environments."
  gem.summary       = "senv version #{ SENV.version }"
  gem.homepage      = "https://github.com/cookrn/senv"

  gem.files         = `git ls-files`.split $\
  gem.executables   = gem.files.grep( %r{^bin/} ).map{ | f | File.basename f }
  gem.test_files    = gem.files.grep %r{^(test|spec|features)/}
  gem.name          = "senv"
  gem.require_paths = [ "lib" ]
  gem.version       = SENV.version

  gem.add_dependency "map"  , "~> 5.4.0"

  gem.add_development_dependency "minitest" , "~> 2.11.3"
  gem.add_development_dependency "rake"     , "~> 0.9.2.2"
end
