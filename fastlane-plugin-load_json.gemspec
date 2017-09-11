# coding: utf-8

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fastlane/plugin/load_json/version'

Gem::Specification.new do |spec|
  spec.name          = 'fastlane-plugin-load_json'
  spec.version       = Fastlane::LoadJson::VERSION
  spec.author        = 'Felix Krause'
  spec.email         = 'json@krausefx.com'

  spec.summary       = 'Loads a local JSON file and parses it'
  spec.homepage      = "https://github.com/KrauseFx/fastlane-plugin-load_json"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*"] + %w(README.md LICENSE)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  # Don't add a dependency to fastlane
  # since this would cause a circular dependency

  # spec.add_dependency 'your-dependency', '~> 1.0.0'

  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'fastlane', '>= 2.26.1'
end
