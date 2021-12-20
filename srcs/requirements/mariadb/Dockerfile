FROM debian:buster

WORKDIR /root

COPY . /root/


RUN chmod +x tools/build_mariadb.sh && ./tools/build_mariadb.sh


CMD ["sh", "tools/run_front.sh"]

