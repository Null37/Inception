#!/bin/bash

apt-get -y update
apt-get -y install mariadb-server
cd /root/ ;  cp conf/50-server.cnf  /etc/mysql/mariadb.conf.d/50-server.cnf
