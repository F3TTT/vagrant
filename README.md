vagrant
=======

Vagrant file / scripts to configure local lab


Boxes
=======

This project currently builds two CentOS boxes from Puppetlabs that do not have CM packaged with them.  It sets up local repositories from Epiq to speed up set up.  It installs puppetmaster, puppet and foreman.  


TODO
======

1.  Make puppet client join to puppet server and control puppet client with basic commands.
2.  Add puppet client to foreman ENC.
3.  Set up smart proxy inside foreman ENC and document procedure.
4.  Gather use cases for puppet inside Epiq
5.  Execute use cases
6.  Incrementally improve framework to fix all use cases
7.  Provide framework to business for acquisition of licenses.
8.  Implement in production
