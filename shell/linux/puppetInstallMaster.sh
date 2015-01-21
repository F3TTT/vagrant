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
sudo hostname puppet.localdomain
sudo service network restart


# add the RPM
# http://docs.puppetlabs.com/guides/puppetlabs_package_repositories.html#for-red-hat-enterprise-linux-and-derivatives
sudo yum -y install puppet-release
sudo yum -y install puppet-server
sudo yum -y install foreman-release

# autosign on - never use this for production
sudo sh -c "echo * > /etc/puppet/autosign.conf"

sudo service puppet stop
sudo service puppetmaster stop
#move puppet.conf into place
sudo cp /home/vagrant/puppet/puppet.conf /etc/puppet/puppet.conf

#start puppetmaster
sudo service puppetmaster start
sudo service puppet start

# http://docs.puppetlabs.com/guides/installation.html#post-install
sudo puppet resource service puppet ensure=running enable=true

# set vagrant password
usermod -p "paX5EmO4EXy0I" vagrant
