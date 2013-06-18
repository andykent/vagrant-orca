require "vagrant-orca/version"

begin
  require "vagrant"
rescue LoadError
  raise "The Vagrant Orca plugin must be run within Vagrant."
end

module VagrantPlugins
  class OrcaProvisioner < Vagrant.plugin("2")
    name "Orca Provisioner"

    config(:orca, :provisioner) do
      require_relative "./vagrant-orca/config"
      VagrantPlugins::Orca::Config
    end

    provisioner :orca do
      require_relative "./vagrant-orca/provisioner"
      VagrantPlugins::Orca::Provisioner
    end
  end
end