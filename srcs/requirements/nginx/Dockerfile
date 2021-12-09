FROM debian:buster

WORKDIR /root

COPY . /root/

RUN chmod +x /root/tools/build.sh  && ./tools/build.sh
RUN cd /etc/nginx && mkdir ssl
RUN mv conf/default /etc/nginx/sites-available/.
RUN mv conf/ssamadi.pem /etc/nginx/ssl/.
RUN mv conf/ssamadi.key /etc/nginx/ssl/.
EXPOSE 443:443

CMD nginx -g 'daemon off;'
