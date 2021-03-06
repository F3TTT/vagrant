#Puppet Master Install
# http://docs.puppetlabs.com/guides/installation.html#red-hat-enterprise-linux-and-derivatives

# ensure the date/time is synced
sudo ntpdate us.pool.ntp.org

# shut down firewall permanently
sudo service iptables save
sudo service iptables stop
sudo chkconfig iptables off

# Set the hostname to puppet
# sudo vim /etc/sysconfig/network
sudo hostname puppetclient.localdomain
sudo service network restart

# add the RPM
# http://docs.puppetlabs.com/guides/puppetlabs_package_repositories.html#for-red-hat-enterprise-linux-and-derivatives
sudo yum -y install puppetlabs-release
sudo yum -y install puppet

# Add puppetmaster to hosts file
sudo echo "192.168.0.6     puppetmaster.localdomain puppetmaster" >> /etc/hosts

# Add puppetmaster to puppet.conf
sudo sed -i '/\[main\]/a      server = puppetmaster.localdomain' /etc/puppet/puppet.conf
sudo sed -i 's/server =/    server =/' /etc/puppet/puppet.conf

# http://docs.puppetlabs.com/guides/installation.html#post-install
sudo puppet resource service puppet ensure=running enable=true

# Request cert 
sudo puppet agent --test 

# set vagrant password
usermod -p "paX5EmO4EXy0I" vagrant



