# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "better_pluralize/version"

Gem::Specification.new do |spec|
  spec.name          = "better_pluralize"
  spec.version       = BetterPluralize::VERSION
  spec.authors       = ["Jiri Pospisil"]
  spec.email         = ["mekishizufu@gmail.com"]
  spec.description   = "Adds block support to the Rails' pluralize view helper so you can further customize its output"
  spec.summary       = "Adds block support to the Rails' pluralize view helper"
  spec.homepage      = "https://github.com/mekishizufu/better_pluralize"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_dependency "rails", "> 3"
end
