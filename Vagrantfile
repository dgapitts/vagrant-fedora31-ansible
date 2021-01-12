# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1024"]
    vb.customize ["modifyvm", :id, "--cpus", 2]
  end
  config.vm.box = "fedora/32-cloud-base"
  config.vm.box_version = "32.20200422.0"
  config.vm.hostname = "fed32"
  config.vm.network :forwarded_port, guest: 5432, host: 9510
  config.vm.provision :shell, :path => "provision.sh"
end
