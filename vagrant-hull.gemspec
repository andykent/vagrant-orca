# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant-hull/version'

Gem::Specification.new do |spec|
  spec.name          = "vagrant-hull"
  spec.version       = VagrantPlugins::Hull::VERSION
  spec.authors       = ["Andy Kent"]
  spec.email         = ["andy.kent@me.com"]
  spec.description   = %q{Vagrant Hull Provisioner}
  spec.summary       = %q{Use Vagraant to provision Hull files}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  # spec.add_dependency "hull"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
