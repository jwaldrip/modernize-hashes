# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'modernize-hashes/version'

Gem::Specification.new do |spec|
  spec.name          = "modernize-hashes"
  spec.version       = Modernize::Hashes::VERSION
  spec.authors       = ["Jason Waldrip"]
  spec.email         = ["jason@waldrip.net"]
  spec.description   = "Modernizes all hashes to be Ruby > 1.9 style hashes"
  spec.summary       = "Modernizes all hashes to be Ruby > 1.9 style hashes"
  spec.homepage      = "https://github.com/jwaldrip/modernize-hashes"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end