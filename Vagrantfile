# -*- mode: ruby -*-
# vi: set ft=ruby :

BOX = "bento/oraclelinux-9"

Vagrant.configure("2") do |config|
  config.vm.box = BOX
  config.hostmanager.enabled = true
  config.hostmanager.manage_guest = true

  config.vm.define :puppet do |puppet|
    puppet.vm.network :private_network, ip: "172.16.10.10", netmask: "255.255.255.0"
    puppet.vm.hostname = "puppet.preda.ca"  
    puppet.vm.synced_folder ".", "/puppet_course"
    puppet.vm.provider :vmware_desktop do |vb|
      vb.memory = "3072"
    end
 end

  config.vm.define :web do |web|
    web.vm.network :private_network, ip: "172.16.10.11", netmask: "255.255.255.0"
    web.vm.network "forwarded_port", guest: 80, host: 8080
    web.vm.hostname = "web.preda.ca"
    web.vm.synced_folder ".", "/puppet_course"
  end

  config.vm.define :db do |db|
    db.vm.network :private_network, ip: "172.16.10.12", netmask: "255.255.255.0"
    db.vm.network "forwarded_port", guest: 8081, host: 8081
    db.vm.hostname = "db.preda.ca"
    db.vm.synced_folder ".", "/puppet_course"
  end

end
