FROM debian:buster

WORKDIR /root

COPY . /root/

RUN chmod +x /root/tools/build_wordpress.sh && ./tools/build_wordpress.sh
CMD php-fpm7.3 -F