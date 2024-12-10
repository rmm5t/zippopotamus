# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'zippopotamus/version'

Gem::Specification.new do |spec|
  username           = "rmm5t"
  spec.name          = "zippopotamus"
  spec.version       = Zippopotamus::VERSION
  spec.authors       = ["Ryan McGeary"]
  spec.email         = ["ryan@mcgeary.org"]
  spec.summary       = "Ruby wrapper for the Zippopotam.us API"
  spec.description   = "#{spec.summary}. Lookup the city, state, longitude, and latitude for a given country and postal code, or lookup a list of possible postal codes for a given country, state, and city."
  spec.homepage      = "https://github.com/#{username}/#{spec.name}"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.metadata = {
    "bug_tracker_uri"   => "#{spec.homepage}/issues",
    "changelog_uri"     => "#{spec.homepage}/releases",
    "source_code_uri"   => spec.homepage,
    "funding_uri"       => "https://github.com/sponsors/#{username}",
  }

  spec.add_runtime_dependency "rest-client", "~> 1.7"

  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "minitest", "~> 5.5"
  spec.add_development_dependency "minitest-reporters", "~> 1.3", "> 1.3.1"
  spec.add_development_dependency "webmock"

  spec.required_ruby_version = ">= 1.9.3"
end
