Vagrant Provisioner Plugin for Orca
===================================

Orca is a simplified server build system. See: https://github.com/andykent/orca for more info.


Installation
------------

Install the vagrant plugin...

    vagrant plugin install vagrant-orca

Then add orca as a provisioner in you Vagrantfile config...

    config.vm.provision :orca


Configuration
-------------

By default Orca will try to load `./orca/orca.rb` and apply a package named `app` this can optionally be configured as shown below.

    config.vm.provision :orca do |orca|
      orca.file = 'config/build.rb'
      orca.package = 'webserver'
    end


Usage
-----

Once configured Orca should simply run as part of the vm build process so all you need to do is...

    vagrant up