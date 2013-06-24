# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant-orca/version'

Gem::Specification.new do |spec|
  spec.name          = "vagrant-orca"
  spec.version       = VagrantPlugins::Orca::VERSION
  spec.authors       = ["Andy Kent"]
  spec.email         = ["andy.kent@me.com"]
  spec.description   = %q{Vagrant Provisioner Plugin for Orca}
  spec.summary       = %q{Use Vagrant to provision Orca build files}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "orca", "~> 0.2.0"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
