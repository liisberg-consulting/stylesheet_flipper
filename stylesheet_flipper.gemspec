# -*- encoding: utf-8 -*-
require File.expand_path('../lib/stylesheet_flipper/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Jeppe Liisberg"]
  gem.email         = ["jeppe@liisberg.net"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.add_runtime_dependency "rails", "~>3.0"
  gem.add_runtime_dependency "r2"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "stylesheet_flipper"
  gem.require_paths = ["lib"]
  gem.version       = StylesheetFlipper::VERSION
end
