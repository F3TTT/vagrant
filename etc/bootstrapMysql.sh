if [ ! -f /var/log/databasesetup ];
then


    echo "CREATE DATABASE foreman CHARACTER SET utf8;" | mysql -uroot 
    echo "CREATE USER 'foreman'@'foreman.domain';" | mysql -uroot 
    echo "GRANT ALL PRIVILEGES ON foreman.* TO 'foreman'@'foreman.domain' IDENTIFIED BY 'foreman_password';" | mysql -uroot 
    echo "CREATE USER 'foreman'@'foreman-enc.wit.prod';" | mysql -uroot 
    echo "GRANT ALL PRIVILEGES ON foreman.* TO 'foreman'@'foreman-enc.domain' IDENTIFIED BY 'foreman_password';" | mysql -uroot 
    echo "CREATE USER 'foreman'@'foreman-reports.wit.prod';" | mysql -uroot -prootpass
    echo "GRANT ALL PRIVILEGES ON foreman.* TO 'foreman'@'foreman-reports.domain' IDENTIFIED BY 'foreman_password';" | mysql -uroot 
    echo "UPDATE user SET password=PASSWORD('root') WHERE user='root'; | mysql -uroot 
    echo "flush privileges" | mysql -uroot 

    touch /var/log/databasesetup

    if [ -f /vagrant/data/initial.sql ];
    then
        mysql -uroot -proot wordpress < /vagrant/data/initial.sql
    fi
fi
