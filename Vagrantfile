# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "debian/bookworm64"
  config.vm.hostname = "redmine"
  config.vm.network "public_network", ip: "192.168.31.94"
  config.vm.provision "shell", path: "provision.sh"

end
