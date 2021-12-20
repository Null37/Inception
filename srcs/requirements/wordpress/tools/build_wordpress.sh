#!/bin/bash

apt-get -y update
apt-get -y upgrade 

apt-get -y install php7.3-fpm php-mysql curl

# apt-get -y upgrade


# create /var/www/html
mkdir -p /var/www/html
#cd /var/www/html/ && curl -O https://wordpress.org/latest.tar.gz

# tar -xvf latest.tar.gz
# rm -rf latest.tar.gz
service php7.3-fpm start
cd /var/www/html/ ; curl -O https://wordpress.org/latest.tar.gz
tar -xvf latest.tar.gz
rm -rf latest.tar.gz
service php7.3-fpm stop 
cd /root
cp conf/www.conf /etc/php/7.3/fpm/pool.d/.
#cd /root &&  cp conf/my.cnf /etc/mysql/my.cnf
# apt-get -y upgrade 

