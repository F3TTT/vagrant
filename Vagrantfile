# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure("2") do |config|
   config.vm.define "master" do |master|
     master.vm.box = "puppetlabs/centos-6.5-64-nocm"
     master.vm.hostname= "puppetmaster.localdomain"
     master.vm.synced_folder "puppet/modules", "/etc/puppet/modules"
     master.vm.synced_folder "puppet/manifests", "/etc/puppet/manifests"
     master.vm.synced_folder "puppet/", "/home/vagrant/puppet"
     master.vm.synced_folder "etc/", "/home/vagrant/etc"
     
     master.vm.provider :virtualbox do |v, override|
       override.vm.network :private_network, ip: "192.168.0.6"
       # Use the host's DNS resolver
       v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
       v.customize ["modifyvm", :id, "--memory", "2048"]
     end
    
    master.vm.provision :shell, :path => "shell/linux/addEpiqRepos.sh"
    master.vm.provision :shell, :path => "shell/linux/addBaseTools.sh"
    master.vm.provision :shell, :path => "shell/linux/puppetInstallMaster.sh"
    master.vm.provision :shell, :inline => 'echo "192.168.0.6  puppetmaster.localdomain puppetmaster" >> /etc/hosts'
    end

   config.vm.define "client" do |client|
     client.vm.box = "puppetlabs/centos-6.5-64-nocm"
     client.vm.hostname= "puppetclient.localdomain"
     client.vm.synced_folder "puppet/modules", "/etc/puppet/modules"
     client.vm.synced_folder "puppet/manifests", "/etc/puppet/manifests"
     client.vm.synced_folder "puppet/", "/home/vagrant/puppet"
     client.vm.synced_folder "etc/", "/home/vagrant/etc"
     
     client.vm.provider :virtualbox do |v, override|
       override.vm.network :private_network, ip: "192.168.0.100"
       # Use the host's DNS resolver
       v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
       v.customize ["modifyvm", :id, "--memory", "2048"]
     end
    
    client.vm.provision :shell, :path => "shell/linux/addEpiqRepos.sh"
    client.vm.provision :shell, :path => "shell/linux/addBaseTools.sh"
    client.vm.provision :shell, :path => "shell/linux/puppetInstallCentOS.sh"
    client.vm.provision :shell, :inline => 'echo "192.168.0.100  puppetclient.localdomain puppetclient" >> /etc/hosts'
    end
#   config.vm.define "2k8" do |eight|
#     eight.vm.box = "win-srv-2k8r2"
#     eight.vm.guest = :windows
#     
#     eight.vm.provider :virtualbox do |v, override|
#       v.name = eight.vm.box
#       v.gui = true
#       override.vm.network :private_network, ip: "192.168.0.7"
#       v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
#     end
#    eight.vm.provision :shell, :path => "shell/windows/main.cmd"
#  end

end
