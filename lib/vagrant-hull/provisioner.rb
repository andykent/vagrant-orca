require "hull"

module VagrantPlugins
  module Hull
    class Provisioner < Vagrant.plugin(2, :provisioner)
      def provision
        o = @machine.ssh_info
        hull_file = File.expand_path(@config.file, @machine.env.root_path)
        ENV['HULL_FILE'] = hull_file

        suite = ::Hull::Suite.new
        suite.load_file(hull_file)

        node = ::Hull::Node.new(@machine.name, o[:host], :port => o[:port], :user => o[:username], :keys => o[:private_key_path])

        suite.execute(node, package, :apply)
      end
    end
  end
end
