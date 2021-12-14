cd /root &&  cp conf/my.cnf /etc/mysql/my.cnf
cd /root/ ;  cp conf/50-server.cnf  /etc/mysql/mariadb.conf.d/50-server.cnf
service mysql start
mysql -u root -e "CREATE USER 'test'@'%' IDENTIFIED BY 'root';"
mysql -u root -e "GRANT ALL PRIVILEGES ON * . * TO 'test'@'%';"
mysql -u root -e "CREATE DATABASE wordpress;"




service mysql stop

mysqld_safe