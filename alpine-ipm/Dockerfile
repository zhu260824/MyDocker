FROM  alpine:3.19

MAINTAINER ZHULIN <871707394@qq.com>

RUN apk update && apk upgrade && apk add ipmitool;

ENV HOST_IP=192.168.1.100 \
    HOST_NAME=root \
    HOST_PASS=calvin \
    HOST_SPEED=0x0a

COPY run_ipm.sh /usr/local/run_ipm.sh

CMD ["/bin/sh", "/usr/local/run_ipm.sh"]
