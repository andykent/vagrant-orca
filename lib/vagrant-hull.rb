require "vagrant-hull/version"

begin
  require "vagrant"
rescue LoadError
  raise "The Vagrant Hull plugin must be run within Vagrant."
end

module VagrantPlugins
  module Hull
  end
end

provisioner :hull do
  require_relative "./vagrant-hull/provisioner"
  VagrantPlugins::Hull::Provisioner
end