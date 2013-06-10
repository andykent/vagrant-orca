require "hull"

module VagrantPlugins
  module Hull
    class Provisioner < Vagrant.plugin(2, :provisioner)
      def provision
        include Hull::DSL
        require config.hull_file
        o = machine.ssh_info
        node(machine.name, o[:host], :port => o[:port], :user => o[:username], :keys => o[:private_key_path])
      end
    end
  end
end
