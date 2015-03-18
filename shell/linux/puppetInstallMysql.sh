#Puppet Master Install
# http://docs.puppetlabs.com/guides/installation.html#red-hat-enterprise-linux-and-derivatives

# ensure the date/time is synced
sudo ntpdate us.pool.ntp.org

# Set up NTPD
sudo service ntpd start

# shut down firewall permanently
sudo service iptables save
sudo service iptables stop
sudo chkconfig iptables off

# add the RPM
# http://docs.puppetlabs.com/guides/puppetlabs_package_repositories.html#for-red-hat-enterprise-linux-and-derivatives
sudo yum -y install mysql

sudo service puppet stop
#move puppet.conf into place
sudo cp /home/vagrant/etc/bootstrapMysql.sh /bootstrapMysql.sh

#start puppet
sudo service puppet start

# http://docs.puppetlabs.com/guides/installation.html#post-install
sudo puppet resource service puppet ensure=running enable=true

# set vagrant password
usermod -p "paX5EmO4EXy0I" vagrant

sudo service httpd stop

sudo /bootstrapMysql.sh
