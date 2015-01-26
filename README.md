vagrant
=======

Vagrant file / scripts to configure local lab


Boxes
=======

This project currently builds two CentOS boxes from Puppetlabs that do not have CM packaged with them.  It sets up local repositories from Epiq to speed up set up.  It installs puppetmaster, puppet and foreman.  


HOWTO
======

1.  Install Vagrant 
2.  Install Virtualbox
3.  Pull code from Github
4.  vagrant up
5.  log into foreman https://192.168.0.6 (ignore cert issues, may have to flush cache/use private or incognito modes to get around them)
    username and password to foreman are produced randomly during vagrant up.  Scroll up in vagrant up session to find it.
6.  Set up smart proxy: https://puppetmaster.localdomain:8443
7.  Report bugs, especially for Mac/VMWare uses.  Development on platforms other than Win7/Virtualbox are not currently a priority.

TODO
======

0.  Improve README to flesh out the github section
1.  Make puppet client join to puppet server and control puppet client with basic commands.
2.  Add puppet client to foreman ENC.
3.  Set up smart proxy inside foreman ENC and document procedure.
4.  Gather use cases for puppet inside Epiq
5.  Execute use cases
6.  Incrementally improve framework to fix all use cases
7.  Provide framework to business for acquisition of licenses.
8.  Implement in production
