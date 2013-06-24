require "orca"

module VagrantPlugins
  module Orca
    class Provisioner < Vagrant.plugin(2, :provisioner)
      def provision
        o = @machine.ssh_info
        orca_file = File.expand_path(@config.file, @machine.env.root_path)
        ENV['ORCA_FILE'] = orca_file

        suite = ::Orca::Suite.new
        suite.load_file(orca_file)

        node = ::Orca::Node.new(@machine.name, o[:host], :port => o[:port], :user => o[:username], :keys => o[:private_key_path])

        suite.run(node.name, @config.package, :apply)
      end
    end
  end
end
