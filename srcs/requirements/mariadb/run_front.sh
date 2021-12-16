cd /root &&  cp conf/my.cnf /etc/mysql/my.cnf
cd /root/ ;  cp conf/50-server.cnf  /etc/mysql/mariadb.conf.d/50-server.cnf
chown -R www-data:www-data /var/www/wordpress
service mysql start
mysql -u root -e "CREATE USER 'NULL37'@'%' IDENTIFIED BY 'root37';"
mysql -u root -e "GRANT ALL PRIVILEGES ON * . * TO 'NULL37'@'%';"
mysql -u root -e "CREATE DATABASE db_w;"
chown -R mysql:mysql /var/lib/mysql




service mysql stop

mysqld_safe