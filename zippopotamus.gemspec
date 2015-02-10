# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'zippopotamus/version'

Gem::Specification.new do |spec|
  spec.name          = "zippopotamus"
  spec.version       = Zippopotamus::VERSION
  spec.authors       = ["Ryan McGeary"]
  spec.email         = ["ryan@mcgeary.org"]
  spec.summary       = "Ruby wrapper for the Zippopotam.us API"
  spec.description   = "#{spec.summary}. Lookup the city, state, longitude, and latitude for a given country and postal code, or lookup a list of possible postal codes for a given country, state, and city."
  spec.homepage      = "https://github.com/rmm5t/zippopotamus"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rest-client", "~> 1.4"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.5"
end
