# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.hostname = "nilenso-cookbook-berkshelf"
  config.vm.box = "precise64"
  config.vm.network :private_network, ip: "33.33.33.10"

  config.omnibus.chef_version = :latest
  config.vm.boot_timeout = 120

  config.berkshelf.enabled = true

  config.vm.provision :chef_solo do |chef|
    chef.run_list = [
        "recipe[nilenso-cookbook::default]"\
    ]
  end
end
