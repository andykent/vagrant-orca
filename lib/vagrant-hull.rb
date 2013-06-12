require "vagrant-hull/version"

begin
  require "vagrant"
rescue LoadError
  raise "The Vagrant Hull plugin must be run within Vagrant."
end

module VagrantPlugins
  class HullProvisioner < Vagrant.plugin("2")
    name "Hull Provisioner"

    config(:hull, :provisioner) do
      require_relative "./vagrant-hull/config"
      VagrantPlugins::Hull::Config
    end

    provisioner :hull do
      require_relative "./vagrant-hull/provisioner"
      VagrantPlugins::Hull::Provisioner
    end
  end
end