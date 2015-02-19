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

# Set the hostname to puppet
# sudo vim /etc/sysconfig/network
sudo hostname puppetmaster.localdomain
sudo service network restart


# add the RPM
# http://docs.puppetlabs.com/guides/puppetlabs_package_repositories.html#for-red-hat-enterprise-linux-and-derivatives
sudo yum -y install puppet-release
sudo yum -y install puppet-server
sudo yum -y install foreman-release
sudo yum -y install foreman-installer
# not sure you need this if foreman-installer will put it in
#sudo yum -y install httpd

# autosign on - never use this for production
sudo sh -c "echo *.localdomain" > /etc/puppet/autosign.conf
sudo sh -c "echo *.ficust" >> /etc/puppet/autosign.conf
sudo sh -c "echo *.krcust" >> /etc/puppet/autosign.conf
sudo sh -c "echo *.thcust" >> /etc/puppet/autosign.conf

# trying to see if this will clear the error after foreman-installer.  
# don't need to stop/start it if that wasn't source of build fail
#sudo service httpd start
#sudo service httpd stop

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

# Install Foreman
# use || true to override the failure to start apache that causes build to fail
#foreman-installer > /tmp/foremanInstaller.stdout|| true
foreman-installer --puppet-server=false --foreman-proxy-puppetrun=false --foreman-proxy-puppetca=false > /tmp/foremanInstaller.stdout|| true

FOREMANPASSWORD=`grep Initial /tmp/foremanInstaller.stdout | awk '{ print $6 }'`

echo "FOREMANPASSWORD should be $FOREMANPASSWORD"

sudo service httpd stop
sudo service httpd start

curl -k -u admin:$FOREMANPASSWORD -H 'Content-Type: application/json' -d '{"smart_proxy":{"name": "default", "url": "https://puppetmaster.localdomain:8443"}}' -X POST https://puppetmaster.localdomain/api/v2/smart_proxies

