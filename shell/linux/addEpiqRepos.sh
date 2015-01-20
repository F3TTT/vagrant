# copy in Epiq yum repo
sudo cp /home/vagrant/etc/rhel_6_3_X64_local.repo /etc/yum.repos.d
sudo cp /home/vagrant/etc/rhel_6_latest_X64_local.repo /etc/yum.repos.d
sudo chown root:root /etc/yum.repos.d/*
sudo chmod 644 /etc/yum.repos.d/*
sudo yum --enablerepo=rhel6_u3_base_local,rhel6_addons,rhel6_latest_base_local
