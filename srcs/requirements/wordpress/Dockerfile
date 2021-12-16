FROM debian:buster

WORKDIR /root

COPY . /root/

RUN chmod +x /root/tools/build_wordpress.sh && ./tools/build_wordpress.sh
CMD sh ./tools/run_cmd.sh