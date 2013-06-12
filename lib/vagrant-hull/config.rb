module VagrantPlugins
  module Hull
    class Config < Vagrant.plugin("2", :config)
      attr_reader :file
      attr_reader :package
    end
  end
end