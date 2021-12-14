#!/bin/bash

apt-get -y update
apt-get -y upgrade 

apt-get -y install php7.3-fpm php-mysql
apt-get -y update
# apt-get -y upgrade

apt-get -y install wget
apt-get -y update

#create /var/www/html
cd /var
mkdir /var/www
mkdir /var/www/html
service php7.3-fpm start
service php7.3-fpm stop 
cd /root
mv conf/www.conf /etc/php/7.3/fpm/pool.d/.
apt-get -y install mariadb-client
cd /root &&  cp conf/my.cnf /etc/mysql/my.cnf
# apt-get -y upgrade 

