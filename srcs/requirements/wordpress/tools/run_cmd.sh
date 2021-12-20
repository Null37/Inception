cd /var/www/html ; cp /root/conf/wp-config.php . ; chmod 644 wp-config.php
cd /var/www/html ; cp -R wordpress/* . ; rm -rf  wordpress
php-fpm7.3 -F