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
       v.customize ["modifyvm", :id, "--cpus", "2"]
     end
    
    master.vm.provision :shell, :path => "shell/linux/addEpiqRepos.sh"
    master.vm.provision :shell, :path => "shell/linux/addBaseTools.sh"
    master.vm.provision :shell, :path => "shell/linux/puppetInstallMaster.sh"
    master.vm.provision :shell, :inline => 'echo "192.168.0.6  puppetmaster.localdomain puppetmaster" >> /etc/hosts'
    end

   config.vm.define "client100" do |client100|
     client100.vm.box = "puppetlabs/centos-6.5-64-nocm"
     client100.vm.hostname= "puppetclient100.localdomain"
     client100.vm.synced_folder "puppet/modules", "/etc/puppet/modules"
     client100.vm.synced_folder "puppet/manifests", "/etc/puppet/manifests"
     client100.vm.synced_folder "puppet/", "/home/vagrant/puppet"
     client100.vm.synced_folder "etc/", "/home/vagrant/etc"
     
     client100.vm.provider :virtualbox do |v, override|
       override.vm.network :private_network, ip: "192.168.0.100"
       # Use the host's DNS resolver
       v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
       v.customize ["modifyvm", :id, "--memory", "2048"]
       v.customize ["modifyvm", :id, "--cpus", "2"]
     end
    
    client100.vm.provision :shell, :path => "shell/linux/addEpiqRepos.sh"
    client100.vm.provision :shell, :path => "shell/linux/addBaseTools.sh"
    client100.vm.provision :shell, :path => "shell/linux/puppetInstallCentOS.sh"
    client100.vm.provision :shell, :inline => 'echo "192.168.0.100  puppetclient100.localdomain puppetclient100" >> /etc/hosts'
    end
   config.vm.define "client101" do |client101|
     client101.vm.box = "puppetlabs/centos-6.5-64-nocm"
     client101.vm.hostname= "puppetclient101.localdomain"
     client101.vm.synced_folder "puppet/modules", "/etc/puppet/modules"
     client101.vm.synced_folder "puppet/manifests", "/etc/puppet/manifests"
     client101.vm.synced_folder "puppet/", "/home/vagrant/puppet"
     client101.vm.synced_folder "etc/", "/home/vagrant/etc"
     
     client101.vm.provider :virtualbox do |v, override|
       override.vm.network :private_network, ip: "192.168.0.101"
       # Use the host's DNS resolver
       v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
       v.customize ["modifyvm", :id, "--memory", "2048"]
       v.customize ["modifyvm", :id, "--cpus", "2"]
     end
    
    client101.vm.provision :shell, :path => "shell/linux/addEpiqRepos.sh"
    client101.vm.provision :shell, :path => "shell/linux/addBaseTools.sh"
    client101.vm.provision :shell, :path => "shell/linux/puppetInstallCentOS.sh"
    client101.vm.provision :shell, :inline => 'echo "192.168.0.101  puppetclient101.localdomain puppetclient101" >> /etc/hosts'
    end
   config.vm.define "client102" do |client102|
     client102.vm.box = "puppetlabs/centos-6.5-64-nocm"
     client102.vm.hostname= "puppetclient102.localdomain"
     client102.vm.synced_folder "puppet/modules", "/etc/puppet/modules"
     client102.vm.synced_folder "puppet/manifests", "/etc/puppet/manifests"
     client102.vm.synced_folder "puppet/", "/home/vagrant/puppet"
     client102.vm.synced_folder "etc/", "/home/vagrant/etc"
     
     client102.vm.provider :virtualbox do |v, override|
       override.vm.network :private_network, ip: "192.168.0.102"
       # Use the host's DNS resolver
       v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
       v.customize ["modifyvm", :id, "--memory", "2048"]
       v.customize ["modifyvm", :id, "--cpus", "2"]
     end
    
    client102.vm.provision :shell, :path => "shell/linux/addEpiqRepos.sh"
    client102.vm.provision :shell, :path => "shell/linux/addBaseTools.sh"
    client102.vm.provision :shell, :path => "shell/linux/puppetInstallCentOS.sh"
    client102.vm.provision :shell, :inline => 'echo "192.168.0.102  puppetclient102.localdomain puppetclient102" >> /etc/hosts'
    end
   config.vm.define "client103" do |client103|
     client103.vm.box = "puppetlabs/centos-6.5-64-nocm"
     client103.vm.hostname= "puppetclient103.localdomain"
     client103.vm.synced_folder "puppet/modules", "/etc/puppet/modules"
     client103.vm.synced_folder "puppet/manifests", "/etc/puppet/manifests"
     client103.vm.synced_folder "puppet/", "/home/vagrant/puppet"
     client103.vm.synced_folder "etc/", "/home/vagrant/etc"
     
     client103.vm.provider :virtualbox do |v, override|
       override.vm.network :private_network, ip: "192.168.0.103"
       # Use the host's DNS resolver
       v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
       v.customize ["modifyvm", :id, "--memory", "2048"]
       v.customize ["modifyvm", :id, "--cpus", "2"]
     end
    
    client103.vm.provision :shell, :path => "shell/linux/addEpiqRepos.sh"
    client103.vm.provision :shell, :path => "shell/linux/addBaseTools.sh"
    client103.vm.provision :shell, :path => "shell/linux/puppetInstallCentOS.sh"
    client103.vm.provision :shell, :inline => 'echo "192.168.0.103  puppetclient103.localdomain puppetclient103" >> /etc/hosts'
    end
   config.vm.define "client104" do |client104|
     client104.vm.box = "puppetlabs/centos-6.5-64-nocm"
     client104.vm.hostname= "puppetclient104.localdomain"
     client104.vm.synced_folder "puppet/modules", "/etc/puppet/modules"
     client104.vm.synced_folder "puppet/manifests", "/etc/puppet/manifests"
     client104.vm.synced_folder "puppet/", "/home/vagrant/puppet"
     client104.vm.synced_folder "etc/", "/home/vagrant/etc"
     
     client104.vm.provider :virtualbox do |v, override|
       override.vm.network :private_network, ip: "192.168.0.104"
       # Use the host's DNS resolver
       v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
       v.customize ["modifyvm", :id, "--memory", "2048"]
       v.customize ["modifyvm", :id, "--cpus", "2"]
     end
    
    client104.vm.provision :shell, :path => "shell/linux/addEpiqRepos.sh"
    client104.vm.provision :shell, :path => "shell/linux/addBaseTools.sh"
    client104.vm.provision :shell, :path => "shell/linux/puppetInstallCentOS.sh"
    client104.vm.provision :shell, :inline => 'echo "192.168.0.104  puppetclient104.localdomain puppetclient104" >> /etc/hosts'
    end
   config.vm.define "client105" do |client105|
     client105.vm.box = "puppetlabs/centos-6.5-64-nocm"
     client105.vm.hostname= "puppetclient105.localdomain"
     client105.vm.synced_folder "puppet/modules", "/etc/puppet/modules"
     client105.vm.synced_folder "puppet/manifests", "/etc/puppet/manifests"
     client105.vm.synced_folder "puppet/", "/home/vagrant/puppet"
     client105.vm.synced_folder "etc/", "/home/vagrant/etc"
     
     client105.vm.provider :virtualbox do |v, override|
       override.vm.network :private_network, ip: "192.168.0.105"
       # Use the host's DNS resolver
       v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
       v.customize ["modifyvm", :id, "--memory", "2048"]
       v.customize ["modifyvm", :id, "--cpus", "2"]
     end
    
    client105.vm.provision :shell, :path => "shell/linux/addEpiqRepos.sh"
    client105.vm.provision :shell, :path => "shell/linux/addBaseTools.sh"
    client105.vm.provision :shell, :path => "shell/linux/puppetInstallCentOS.sh"
    client105.vm.provision :shell, :inline => 'echo "192.168.0.105  puppetclient105.localdomain puppetclient105" >> /etc/hosts'
    end
   config.vm.define "client106" do |client106|
     client106.vm.box = "puppetlabs/centos-6.5-64-nocm"
     client106.vm.hostname= "puppetclient106.localdomain"
     client106.vm.synced_folder "puppet/modules", "/etc/puppet/modules"
     client106.vm.synced_folder "puppet/manifests", "/etc/puppet/manifests"
     client106.vm.synced_folder "puppet/", "/home/vagrant/puppet"
     client106.vm.synced_folder "etc/", "/home/vagrant/etc"
     
     client106.vm.provider :virtualbox do |v, override|
       override.vm.network :private_network, ip: "192.168.0.106"
       # Use the host's DNS resolver
       v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
       v.customize ["modifyvm", :id, "--memory", "2048"]
       v.customize ["modifyvm", :id, "--cpus", "2"]
     end
    
    client106.vm.provision :shell, :path => "shell/linux/addEpiqRepos.sh"
    client106.vm.provision :shell, :path => "shell/linux/addBaseTools.sh"
    client106.vm.provision :shell, :path => "shell/linux/puppetInstallCentOS.sh"
    client106.vm.provision :shell, :inline => 'echo "192.168.0.106  puppetclient106.localdomain puppetclient106" >> /etc/hosts'
    end
   config.vm.define "client107" do |client107|
     client107.vm.box = "puppetlabs/centos-6.5-64-nocm"
     client107.vm.hostname= "puppetclient107.localdomain"
     client107.vm.synced_folder "puppet/modules", "/etc/puppet/modules"
     client107.vm.synced_folder "puppet/manifests", "/etc/puppet/manifests"
     client107.vm.synced_folder "puppet/", "/home/vagrant/puppet"
     client107.vm.synced_folder "etc/", "/home/vagrant/etc"
     
     client107.vm.provider :virtualbox do |v, override|
       override.vm.network :private_network, ip: "192.168.0.107"
       # Use the host's DNS resolver
       v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
       v.customize ["modifyvm", :id, "--memory", "2048"]
       v.customize ["modifyvm", :id, "--cpus", "2"]
     end
    
    client107.vm.provision :shell, :path => "shell/linux/addEpiqRepos.sh"
    client107.vm.provision :shell, :path => "shell/linux/addBaseTools.sh"
    client107.vm.provision :shell, :path => "shell/linux/puppetInstallCentOS.sh"
    client107.vm.provision :shell, :inline => 'echo "192.168.0.107  puppetclient107.localdomain puppetclient107" >> /etc/hosts'
    end
   config.vm.define "client108" do |client108|
     client108.vm.box = "puppetlabs/centos-6.5-64-nocm"
     client108.vm.hostname= "puppetclient108.localdomain"
     client108.vm.synced_folder "puppet/modules", "/etc/puppet/modules"
     client108.vm.synced_folder "puppet/manifests", "/etc/puppet/manifests"
     client108.vm.synced_folder "puppet/", "/home/vagrant/puppet"
     client108.vm.synced_folder "etc/", "/home/vagrant/etc"
     
     client108.vm.provider :virtualbox do |v, override|
       override.vm.network :private_network, ip: "192.168.0.108"
       # Use the host's DNS resolver
       v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
       v.customize ["modifyvm", :id, "--memory", "2048"]
       v.customize ["modifyvm", :id, "--cpus", "2"]
     end
    
    client108.vm.provision :shell, :path => "shell/linux/addEpiqRepos.sh"
    client108.vm.provision :shell, :path => "shell/linux/addBaseTools.sh"
    client108.vm.provision :shell, :path => "shell/linux/puppetInstallCentOS.sh"
    client108.vm.provision :shell, :inline => 'echo "192.168.0.108  puppetclient108.localdomain puppetclient108" >> /etc/hosts'
    end
   config.vm.define "client109" do |client109|
     client109.vm.box = "puppetlabs/centos-6.5-64-nocm"
     client109.vm.hostname= "puppetclient109.localdomain"
     client109.vm.synced_folder "puppet/modules", "/etc/puppet/modules"
     client109.vm.synced_folder "puppet/manifests", "/etc/puppet/manifests"
     client109.vm.synced_folder "puppet/", "/home/vagrant/puppet"
     client109.vm.synced_folder "etc/", "/home/vagrant/etc"
     
     client109.vm.provider :virtualbox do |v, override|
       override.vm.network :private_network, ip: "192.168.0.109"
       # Use the host's DNS resolver
       v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
       v.customize ["modifyvm", :id, "--memory", "2048"]
       v.customize ["modifyvm", :id, "--cpus", "2"]
     end
    
    client109.vm.provision :shell, :path => "shell/linux/addEpiqRepos.sh"
    client109.vm.provision :shell, :path => "shell/linux/addBaseTools.sh"
    client109.vm.provision :shell, :path => "shell/linux/puppetInstallCentOS.sh"
    client109.vm.provision :shell, :inline => 'echo "192.168.0.109  puppetclient109.localdomain puppetclient109" >> /etc/hosts'
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
