# -*- encoding: utf-8 -*-
require File.expand_path('../lib/active_record_attributes_stripper/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Damian Ba\304\207kowski"]
  gem.email         = ["damianbackowski@gmail.com"]
  gem.description   = %q{Active Record attributes stripper}
  gem.summary       = %q{Automatically strip all string attributes in model before validation.}
  gem.homepage      = "https://github.com/dbackowski/active_record_attributes_stripper"
  gem.license 	    = 'MIT'

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.name          = "active_record_attributes_stripper"
  gem.require_paths = ["lib"]
  gem.version       = ActiveRecordAttributesStripper::VERSION
end
