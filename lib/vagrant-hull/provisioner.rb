require "hull"

module VagrantPlugins
  module Hull
    class Provisioner < Vagrant.plugin(2, :provisioner)
      include ::Hull::DSL

      def provision
        o = @machine.ssh_info
        require @config.file
        ::Hull::Node.new(@machine.name, o[:host], :port => o[:port], :user => o[:username], :keys => o[:private_key_path])
        ::Hull::DSL.execute(@machine.name, @config.package || 'app', :apply)
      end
    end
  end
end
