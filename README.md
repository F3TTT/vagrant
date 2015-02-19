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
-  vagrant up (foreman temp password is stored in /tmp on master)
-  Report bugs, especially for Mac/VMWare uses.  Development on platforms other than Win7/Virtualbox are not currently a priority.


TODO
======

1.  Capture foreman password and send it to a file or determine how to reset it.
-  Improve README to flesh out the github section
-  Make puppet client join to puppet server and control puppet client with basic commands.
-  Gather use cases for puppet inside Epiq
-  Execute use cases
-  Incrementally improve framework to fix all use cases
-  Provide framework to business for acquisition of licenses.
-  Implement in production
-  See if foreman install can be sped up.  Alternatively, fork off to diff vagrant to speed up sprints

Use Case Index
======

1.  Install a package on one machine
- Install a package on all machines
- Install a package on a subset of the machines
-  Control package configuration
-  Enforce CM
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

Use Case 1 - Install a package via puppet
======

1.  Install a package on one machine
 - vagrant ssh master
  - ```sudo puppet module install -i /etc/puppet/environments/production/modules saz/ntp```
  - add class to hosts in foreman GUI
    - Configure -> Puppet Classes
    - Import from puppetmaster
    - Toggle ntp line and click update
    - Ntp -> Smart Class Parameter -> Check Override -> Submit
    - Hosts -> All hosts
    - click on edit box (sort of looks like dropdown) on puppetclient.localdomain
    - Puppet Classes tab
    - ntp
    - + sign next to ntp
    - submit
  - Confirm that NTP changes were applied via https://puppetmaster.localdomain/reports?search=eventful+%3D+true


Use Case 2 - Install a package on many machines
======
 - vagrant up
 - 
 - probably need to group the hosts together in some fashion


VPN Notes
======

1.  If you're running this setup behind the Cisco Anyconnect client you won't be able to SSH to your boxes or bring them up in browsers.  I wasn't able to solve that but the workaround is to use another linux VM with a desktop.  Add a second NIC to that linux VM and make sure that it's a Host-only Adapter and that it's the same one that your vagrant boxes are sharing.  It is possible that this problem has to do with wifi vs. wired connections since I work mostly on wireless when I'm not in the office.


Architecture Questions
======

1.  How many masters will we need?  How will load balancing of master be achieved
-  Where does the Certificate Authority sit?
-  Allow dev to autosign but not QA and Prod, How?


CHANGELOG
======

20150217

1.  Use curl to add smart proxy via API call.  Simplifies deploy of env from 5 steps to 1.

20150216

1.  Determined way to use virtualbox while VPNed in.  Can't get browser to connect to foreman.

20150213

1.  Set puppet agent to run in debug mode (this located the runinterval disparity being in seconds not minutes that fixed the cert problem)

20150206

1.  Broke out use cases and fleshed out 15 examples

20150202

1.  Add puppet client to foreman ENC. 
-  Set up smart proxy inside foreman ENC and document procedure.
-  Converted manual hosts file changes from vagrant user's laptop to HostsUpdater plugin method
