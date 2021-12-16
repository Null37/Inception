cd /var/www/html/ && curl -O https://wordpress.org/latest.tar.gz
tar -xvf latest.tar.gz
rm -rf latest.tar.gz
php-fpm7.3 -F