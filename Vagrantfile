# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu/trusty64"
  config.vm.box_version = ">=1.0"
  config.vm.hostname = "exp"
  config.vm.box_check_update = false

  config.vm.network "forwarded_port", guest: 80, host: 8080, auto_correct: true

  config.vm.network "private_network", ip: "10.10.0.44"
  config.vm.network "public_network", bridge: 'wlan0'

  config.vm.provider "virtualbox" do |vb|
     vb.name = "ExpressJS"
     #vb.gui = true
     # Customize the amount of memory on the VM:
     vb.memory = "1024"
  end

  config.vm.synced_folder ".", "/vagrant"
  #, :nfs => true

  config.bindfs.bind_folder "/vagrant", "/vagrant",
    :owner => "vagrant",
    :group => "www-data",
    :perms => "775"

  config.vm.provision "shell", path: "bash_files/express.sh"

end
