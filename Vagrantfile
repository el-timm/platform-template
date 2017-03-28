# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

    config.vm.box = "ubuntu/xenial64"
    config.vm.network "private_network", ip: "192.168.33.10"
    config.vm.hostname = "platform.local.com"
    config.vm.synced_folder ".", "/vagrant", :mount_options => ["dmode=777", "fmode=666"]
    
    # Optional NFS. Make sure to remove other synced_folder line too
    #config.vm.synced_folder ".", "/var/www", :nfs => { :mount_options => ["dmode=777","fmode=666"] }

   config.vm.provision "shell", path: ".provision/bootstrap.sh"
   config.vm.provision "shell", path: ".provision/vagrantuser.sh", privileged: false
end
