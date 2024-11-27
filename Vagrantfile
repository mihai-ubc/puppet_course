# -*- mode: ruby -*-
# vi: set ft=ruby :

BOX = "bento/oraclelinux-9"

Vagrant.configure("2") do |config|
  config.vm.box = BOX
  config.hostmanager.enabled = true
  config.hostmanager.manage_guest = true

  config.vm.define :puppet do |puppet|
    puppet.vm.network :public_network
    puppet.vm.hostname = "puppet.local"    
    puppet.vm.synced_folder ".", "/puppet_course"
    puppet.vm.provider :vmware_desktop do |vb|
      vb.memory = "3072"
    end
 end

  config.vm.define :web do |web|
    web.vm.network :public_network
    web.vm.network "forwarded_port", guest: 80, host: 8080
    web.vm.hostname = "web.local"
    web.vm.synced_folder ".", "/puppet_course"
  end

  config.vm.define :db do |db|
    db.vm.network :public_network
    db.vm.network "forwarded_port", guest: 8081, host: 8081
    db.vm.hostname = "db.local"
    db.vm.synced_folder ".", "/puppet_course"
  end

end
