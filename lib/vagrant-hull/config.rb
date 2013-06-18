module VagrantPlugins
  module Hull
    class Config < Vagrant.plugin("2", :config)
      attr_accessor :file
      attr_accessor :package

      def initialize
        @file = UNSET_VALUE
        @package = UNSET_VALUE
      end

      def finalize!
        @file = './hull/hull.rb' if @file == UNSET_VALUE
        @package = 'app' if @package == UNSET_VALUE
      end
    end
  end
end