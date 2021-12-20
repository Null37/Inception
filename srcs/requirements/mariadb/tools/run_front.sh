#cd /root &&  cp conf/my.cnf /etc/mysql/my.cnf
if [  ! -f /done ]
then
    cd /root/ ;  cp conf/50-server.cnf  /etc/mysql/mariadb.conf.d/50-server.cnf
    chown -R www-data:www-data /var/www/wordpress
    service mysql start
    mysqladmin --user=root password $MYSQL_ROOT_PASSWORD
    mysql -u root -p$MYSQL_ROOT_PASSWORD -e "CREATE USER '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';"
    mysql -u root -p$MYSQL_ROOT_PASSWORD -e "GRANT ALL PRIVILEGES ON * . * TO '$MYSQL_USER'@'%';"
    mysql -u root -p$MYSQL_ROOT_PASSWORD -e "CREATE DATABASE $MYSQL_DATABASE_NAME;"
    chown -R mysql:mysql /var/lib/mysql
    mysql -u root --password=$MYSQL_ROOT_PASSWORD $MYSQL_DATABASE_NAME < /root/conf/database.sql
    service mysql stop
    touch /done
fi
mysqld_safe