# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu/trusty64"
  config.vm.box_version = ">=1.0"
  config.vm.hostname = "exp"
  config.vm.box_check_update = false

  config.vm.network "forwarded_port", guest: 80, host: 8080, auto_correct: true
  config.vm.network "forwarded_port", guest: 22, host: 50301, auto_correct: true
  
  #config.ssh.port = 50301
  config.ssh.guest_port = 50301

  config.vm.network "private_network", ip: '10.10.0.82', auto_correct: true
  config.vm.network "public_network", bridge: 'eth0', ip: '192.168.1.66'

  config.vm.provider "virtualbox" do |vb|
    vb.name = "express"
    vb.gui = false
     # Customize the amount of memory on the VM:
    vb.memory = "1024"
  end

  config.vm.synced_folder ".", "/vagrant", :nfs => true

  config.bindfs.bind_folder "/vagrant", "/vagrant",
    :owner => "vagrant",
    :group => "www-data",
    :perms => "775"

  config.vbguest.auto_update = false
  
  config.vm.provision "shell", path: "bash_files/express.sh"

end
