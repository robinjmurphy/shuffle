# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "shuffle"
  spec.version       = "0.0.1"
  spec.authors       = ["Robin Murphy"]
  spec.email         = ["robin@robinmurphy.co.uk"]
  spec.description   = "An object shuffler"
  spec.summary       = "An object shuffler"
  spec.homepage      = "https://github.com/robinjmurphy/shuffle"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
