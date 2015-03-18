# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure("2") do |config|
   config.vm.define "foreman" do |foreman|
     foreman.vm.box = "puppetlabs/centos-6.5-64-nocm"
     foreman.vm.hostname= "foreman.ficust"
     foreman.vm.synced_folder "puppet/modules", "/etc/puppet/modules"
     foreman.vm.synced_folder "puppet/manifests", "/etc/puppet/manifests"
     foreman.vm.synced_folder "puppet/", "/home/vagrant/puppet"
     foreman.vm.synced_folder "etc/", "/home/vagrant/etc"
     
     foreman.vm.provider :virtualbox do |v, override|
       override.vm.network :private_network, ip: "192.168.0.1"
       # Use the host's DNS resolver
       v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
       v.customize ["modifyvm", :id, "--memory", "2048"]
       v.customize ["modifyvm", :id, "--cpus", "2"]
     end

    if defined? VagrantPlugins::HostsUpdater
      foreman.hostsupdater.aliases = ["#{foreman.vm.hostname}.dev"]
    end

    
    foreman.vm.provision :shell, :path => "shell/linux/addEpiqRepos.sh"
    foreman.vm.provision :shell, :path => "shell/linux/addBaseTools.sh"
    foreman.vm.provision :shell, :path => "shell/linux/puppetInstallForeman.sh"
    foreman.vm.provision :shell, :inline => 'echo "192.168.0.1  foreman.ficust foreman" >> /etc/hosts'
    end

   config.vm.define "foremanenc" do |foremanenc|
     foremanenc.vm.box = "puppetlabs/centos-6.5-64-nocm"
     foremanenc.vm.hostname= "foremanenc.ficust"
     foremanenc.vm.synced_folder "puppet/modules", "/etc/puppet/modules"
     foremanenc.vm.synced_folder "puppet/manifests", "/etc/puppet/manifests"
     foremanenc.vm.synced_folder "puppet/", "/home/vagrant/puppet"
     foremanenc.vm.synced_folder "etc/", "/home/vagrant/etc"
     
     foremanenc.vm.provider :virtualbox do |v, override|
       override.vm.network :private_network, ip: "192.168.0.2"
       # Use the host's DNS resolver
       v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
       v.customize ["modifyvm", :id, "--memory", "2048"]
       v.customize ["modifyvm", :id, "--cpus", "2"]
     end

    if defined? VagrantPlugins::HostsUpdater
      foremanenc.hostsupdater.aliases = ["#{foremanenc.vm.hostname}.dev"]
    end

    
    foremanenc.vm.provision :shell, :path => "shell/linux/addEpiqRepos.sh"
    foremanenc.vm.provision :shell, :path => "shell/linux/addBaseTools.sh"
    foremanenc.vm.provision :shell, :path => "shell/linux/puppetInstallMaster.sh"
    foremanenc.vm.provision :shell, :inline => 'echo "192.168.0.2  foremanenc.ficust foremanenc" >> /etc/hosts'
    end

   config.vm.define "puppetmasterfi" do |puppetmasterfi|
     puppetmasterfi.vm.box = "puppetlabs/centos-6.5-64-nocm"
     puppetmasterfi.vm.hostname= "puppetmaster.ficust"
     puppetmasterfi.vm.synced_folder "puppet/modules", "/etc/puppet/modules"
     puppetmasterfi.vm.synced_folder "puppet/manifests", "/etc/puppet/manifests"
     puppetmasterfi.vm.synced_folder "puppet/", "/home/vagrant/puppet"
     puppetmasterfi.vm.synced_folder "etc/", "/home/vagrant/etc"
     
     puppetmasterfi.vm.provider :virtualbox do |v, override|
       override.vm.network :private_network, ip: "192.168.0.6"
       # Use the host's DNS resolver
       v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
       v.customize ["modifyvm", :id, "--memory", "2048"]
       v.customize ["modifyvm", :id, "--cpus", "2"]
     end

    if defined? VagrantPlugins::HostsUpdater
      puppetmasterfi.hostsupdater.aliases = ["#{puppetmasterfi.vm.hostname}.dev"]
    end

    
    puppetmasterfi.vm.provision :shell, :path => "shell/linux/addEpiqRepos.sh"
    puppetmasterfi.vm.provision :shell, :path => "shell/linux/addBaseTools.sh"
    puppetmasterfi.vm.provision :shell, :path => "shell/linux/puppetInstallMaster.sh"
    puppetmasterfi.vm.provision :shell, :inline => 'echo "192.168.0.6  puppetpuppetmaster.ficust puppetmaster" >> /etc/hosts'
    end

   config.vm.define "client100" do |client100|
     client100.vm.box = "puppetlabs/centos-6.5-64-nocm"
     client100.vm.hostname= "client100.ficust"
     client100.vm.synced_folder "etc/", "/home/vagrant/etc"
     
     client100.vm.provider :virtualbox do |v, override|
       override.vm.network :private_network, ip: "192.168.0.100"
       # Use the host's DNS resolver
       v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
       v.customize ["modifyvm", :id, "--memory", "2048"]
       v.customize ["modifyvm", :id, "--cpus", "2"]
     end

    if defined? VagrantPlugins::HostsUpdater
      client100.hostsupdater.aliases = ["#{client100.vm.hostname}.dev"]
    end

    
    client100.vm.provision :shell, :path => "shell/linux/addEpiqRepos.sh"
    client100.vm.provision :shell, :path => "shell/linux/addBaseTools.sh"
    client100.vm.provision :shell, :path => "shell/linux/puppetInstallCentOS.sh"
    client100.vm.provision :shell, :inline => 'echo "192.168.0.100  client100.ficust client100" >> /etc/hosts'
    end
   config.vm.define "client101" do |client101|
     client101.vm.box = "puppetlabs/centos-6.5-64-nocm"
     client101.vm.hostname= "client101.ficust"
     client101.vm.synced_folder "etc/", "/home/vagrant/etc"
     
     client101.vm.provider :virtualbox do |v, override|
       override.vm.network :private_network, ip: "192.168.0.101"
       # Use the host's DNS resolver
       v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
       v.customize ["modifyvm", :id, "--memory", "2048"]
       v.customize ["modifyvm", :id, "--cpus", "2"]
     end

    if defined? VagrantPlugins::HostsUpdater
      client101.hostsupdater.aliases = ["#{client101.vm.hostname}.dev"]
    end

    
    client101.vm.provision :shell, :path => "shell/linux/addEpiqRepos.sh"
    client101.vm.provision :shell, :path => "shell/linux/addBaseTools.sh"
    client101.vm.provision :shell, :path => "shell/linux/puppetInstallCentOS.sh"
    client101.vm.provision :shell, :inline => 'echo "192.168.0.101  client101.ficust client101" >> /etc/hosts'
    end
   config.vm.define "client102" do |client102|
     client102.vm.box = "puppetlabs/centos-6.5-64-nocm"
     client102.vm.hostname= "client102.ficust"
     client102.vm.synced_folder "etc/", "/home/vagrant/etc"
     
     client102.vm.provider :virtualbox do |v, override|
       override.vm.network :private_network, ip: "192.168.0.102"
       # Use the host's DNS resolver
       v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
       v.customize ["modifyvm", :id, "--memory", "2048"]
       v.customize ["modifyvm", :id, "--cpus", "2"]
     end

    if defined? VagrantPlugins::HostsUpdater
      client102.hostsupdater.aliases = ["#{client102.vm.hostname}.dev"]
    end

    
    client102.vm.provision :shell, :path => "shell/linux/addEpiqRepos.sh"
    client102.vm.provision :shell, :path => "shell/linux/addBaseTools.sh"
    client102.vm.provision :shell, :path => "shell/linux/puppetInstallCentOS.sh"
    client102.vm.provision :shell, :inline => 'echo "192.168.0.102  client102.ficust client102" >> /etc/hosts'
    end
   config.vm.define "client103" do |client103|
     client103.vm.box = "puppetlabs/centos-6.5-64-nocm"
     client103.vm.hostname= "client103.krcust"
     client103.vm.synced_folder "etc/", "/home/vagrant/etc"
     
     client103.vm.provider :virtualbox do |v, override|
       override.vm.network :private_network, ip: "192.168.0.103"
       # Use the host's DNS resolver
       v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
       v.customize ["modifyvm", :id, "--memory", "2048"]
       v.customize ["modifyvm", :id, "--cpus", "2"]
     end

    if defined? VagrantPlugins::HostsUpdater
      client103.hostsupdater.aliases = ["#{client103.vm.hostname}.dev"]
    end

    
    client103.vm.provision :shell, :path => "shell/linux/addEpiqRepos.sh"
    client103.vm.provision :shell, :path => "shell/linux/addBaseTools.sh"
    client103.vm.provision :shell, :path => "shell/linux/puppetInstallCentOS.sh"
    client103.vm.provision :shell, :inline => 'echo "192.168.0.103  client103.krcust client103" >> /etc/hosts'
    end
   config.vm.define "client104" do |client104|
     client104.vm.box = "puppetlabs/centos-6.5-64-nocm"
     client104.vm.hostname= "client104.krcust"
     client104.vm.synced_folder "etc/", "/home/vagrant/etc"
     
     client104.vm.provider :virtualbox do |v, override|
       override.vm.network :private_network, ip: "192.168.0.104"
       # Use the host's DNS resolver
       v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
       v.customize ["modifyvm", :id, "--memory", "2048"]
       v.customize ["modifyvm", :id, "--cpus", "2"]
     end

    if defined? VagrantPlugins::HostsUpdater
      client104.hostsupdater.aliases = ["#{client104.vm.hostname}.dev"]
    end

    
    client104.vm.provision :shell, :path => "shell/linux/addEpiqRepos.sh"
    client104.vm.provision :shell, :path => "shell/linux/addBaseTools.sh"
    client104.vm.provision :shell, :path => "shell/linux/puppetInstallCentOS.sh"
    client104.vm.provision :shell, :inline => 'echo "192.168.0.104  client104.krcust client104" >> /etc/hosts'
    end
   config.vm.define "client105" do |client105|
     client105.vm.box = "puppetlabs/centos-6.5-64-nocm"
     client105.vm.hostname= "client105.krcust"
     client105.vm.synced_folder "etc/", "/home/vagrant/etc"
     
     client105.vm.provider :virtualbox do |v, override|
       override.vm.network :private_network, ip: "192.168.0.105"
       # Use the host's DNS resolver
       v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
       v.customize ["modifyvm", :id, "--memory", "2048"]
       v.customize ["modifyvm", :id, "--cpus", "2"]
     end

    if defined? VagrantPlugins::HostsUpdater
      client105.hostsupdater.aliases = ["#{client105.vm.hostname}.dev"]
    end

    
    client105.vm.provision :shell, :path => "shell/linux/addEpiqRepos.sh"
    client105.vm.provision :shell, :path => "shell/linux/addBaseTools.sh"
    client105.vm.provision :shell, :path => "shell/linux/puppetInstallCentOS.sh"
    client105.vm.provision :shell, :inline => 'echo "192.168.0.105  client105.krcust client105" >> /etc/hosts'
    end
   config.vm.define "client106" do |client106|
     client106.vm.box = "puppetlabs/centos-6.5-64-nocm"
     client106.vm.hostname= "client106.thcust"
     client106.vm.synced_folder "etc/", "/home/vagrant/etc"
     
     client106.vm.provider :virtualbox do |v, override|
       override.vm.network :private_network, ip: "192.168.0.106"
       # Use the host's DNS resolver
       v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
       v.customize ["modifyvm", :id, "--memory", "2048"]
       v.customize ["modifyvm", :id, "--cpus", "2"]
     end

    if defined? VagrantPlugins::HostsUpdater
      client106.hostsupdater.aliases = ["#{client106.vm.hostname}.dev"]
    end

    
    client106.vm.provision :shell, :path => "shell/linux/addEpiqRepos.sh"
    client106.vm.provision :shell, :path => "shell/linux/addBaseTools.sh"
    client106.vm.provision :shell, :path => "shell/linux/puppetInstallCentOS.sh"
    client106.vm.provision :shell, :inline => 'echo "192.168.0.106  client106.thcust client106" >> /etc/hosts'
    end
   config.vm.define "client107" do |client107|
     client107.vm.box = "puppetlabs/centos-6.5-64-nocm"
     client107.vm.hostname= "client107.thcust"
     client107.vm.synced_folder "etc/", "/home/vagrant/etc"
     
     client107.vm.provider :virtualbox do |v, override|
       override.vm.network :private_network, ip: "192.168.0.107"
       # Use the host's DNS resolver
       v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
       v.customize ["modifyvm", :id, "--memory", "2048"]
       v.customize ["modifyvm", :id, "--cpus", "2"]
     end

    if defined? VagrantPlugins::HostsUpdater
      client107.hostsupdater.aliases = ["#{client107.vm.hostname}.dev"]
    end

    
    client107.vm.provision :shell, :path => "shell/linux/addEpiqRepos.sh"
    client107.vm.provision :shell, :path => "shell/linux/addBaseTools.sh"
    client107.vm.provision :shell, :path => "shell/linux/puppetInstallCentOS.sh"
    client107.vm.provision :shell, :inline => 'echo "192.168.0.107  client107.thcust client107" >> /etc/hosts'
    end
   config.vm.define "client108" do |client108|
     client108.vm.box = "puppetlabs/centos-6.5-64-nocm"
     client108.vm.hostname= "client108.thcust"
     client108.vm.synced_folder "etc/", "/home/vagrant/etc"
     
     client108.vm.provider :virtualbox do |v, override|
       override.vm.network :private_network, ip: "192.168.0.108"
       # Use the host's DNS resolver
       v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
       v.customize ["modifyvm", :id, "--memory", "2048"]
       v.customize ["modifyvm", :id, "--cpus", "2"]
     end

    if defined? VagrantPlugins::HostsUpdater
      client108.hostsupdater.aliases = ["#{client108.vm.hostname}.dev"]
    end

    
    client108.vm.provision :shell, :path => "shell/linux/addEpiqRepos.sh"
    client108.vm.provision :shell, :path => "shell/linux/addBaseTools.sh"
    client108.vm.provision :shell, :path => "shell/linux/puppetInstallCentOS.sh"
    client108.vm.provision :shell, :inline => 'echo "192.168.0.108  client108.thcust client108" >> /etc/hosts'
    end
   config.vm.define "client109" do |client109|
     client109.vm.box = "puppetlabs/centos-6.5-64-nocm"
     client109.vm.hostname= "client109.localdomain"
     client109.vm.synced_folder "etc/", "/home/vagrant/etc"
     
     client109.vm.provider :virtualbox do |v, override|
       override.vm.network :private_network, ip: "192.168.0.109"
       # Use the host's DNS resolver
       v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
       v.customize ["modifyvm", :id, "--memory", "2048"]
       v.customize ["modifyvm", :id, "--cpus", "2"]
     end

    if defined? VagrantPlugins::HostsUpdater
      client109.hostsupdater.aliases = ["#{client109.vm.hostname}.dev"]
    end

    
    client109.vm.provision :shell, :path => "shell/linux/addEpiqRepos.sh"
    client109.vm.provision :shell, :path => "shell/linux/addBaseTools.sh"
    client109.vm.provision :shell, :path => "shell/linux/puppetInstallCentOS.sh"
    client109.vm.provision :shell, :inline => 'echo "192.168.0.109  client109.localdomain client109" >> /etc/hosts'
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
