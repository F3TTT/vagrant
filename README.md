vagrant
=======

Vagrant file / scripts to configure local lab


Boxes
=======

This project currently builds two CentOS boxes from Puppetlabs that do not have CM packaged with them.  It sets up local repositories from Epiq to speed up set up.  It installs puppetmaster, puppet and foreman.  


HOWTO USE THESE EXAMPLES (think I was supposed to put HOWTO make this image here)
======

1.  Install Vagrant  use http://vagrantup.com and use download link, not downloads.vagrantup.com 
-   Install Virtualbox
-   Install vagrant plugin HostsUpdater https://github.com/cogitatio/vagrant-hostsupdater (may require many re-attempts if there is network congestion) 
-  Pull code from Github
-  vagrant up master
-  log into foreman https://puppetmaster.localdomain (ignore cert issues, may have to flush cache/use private or incognito modes to get around them)
    username and password to foreman are produced randomly during vagrant up.  Scroll up in vagrant up session to find it.
-  Set up smart proxy: https://puppetmaster.localdomain:8443
-  vagrant up client
-  vagrant ssh master
 - puppet module install -i /etc/puppet/environments/production/modules saz/ntp
 - add class to hosts in foreman GUI
-  Report bugs, especially for Mac/VMWare uses.  Development on platforms other than Win7/Virtualbox are not currently a priority.


TODO
======

1.  Improve README to flesh out the github section
-  Make puppet client join to puppet server and control puppet client with basic commands.
 - having issues with puppet agent not checking in every 30 min due to cert issues.  dropping runinterval to 2m in /etc/puppet/puppet.conf to troubleshot
-  Gather use cases for puppet inside Epiq
-  Execute use cases
-  Incrementally improve framework to fix all use cases
-  Provide framework to business for acquisition of licenses.
-  Implement in production
-  See if foreman install can be sped up.  Alternatively, fork off to diff vagrant to speed up sprints


CHANGELOG
======

20150202

1.  Add puppet client to foreman ENC. 
-  Set up smart proxy inside foreman ENC and document procedure.
-  Converted manual hosts file changes from vagrant user's laptop to HostsUpdater plugin method



Use cases and architecture questions
======

1.  Install a package via puppet
-  Control package configuration via puppet
-  Enforce CM via puppet
-  Control diverse package configurations based upon geographic location
-  Control diverse package configurations based upon code maturity (dev/qa/prod)
-  Control diverse package configurations based upon geolocation and code maturity
-  Report system settings into CMDB via puppet
-  Developer is able to contribute code but only sysadmins can make changes in production
-  AppServices is able to control application configurations while OS admins control OS settings
-  Add application node to load balancer
-  Remove application node from load balancer
-  Upgrade application
-  Orchestrate application upgrade
-  Orchestrate application upgrade with minimal customer impact
-  Developer is able to check out production branch and create dynamic environment on laptop or VMWare


Architecture Questions
======

1.  How many masters will we need?  How will load balancing of master be achieved
-  Where does the Certificate Authority sit?
-  Allow dev to autosign but not QA and Prod, How?
