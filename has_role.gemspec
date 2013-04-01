# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'has_role/version'

Gem::Specification.new do |spec|
  spec.name          = "has_role"
  spec.version       = HasRole::VERSION
  spec.authors       = ["Andrey"]
  spec.email         = ["railscode@gmail.com"]
  spec.description   = "Useful role methods for Rails User model"
  spec.summary       = "Useful role methods for Rails User model"
  spec.homepage      = "https://github.com/vav/has_role"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
