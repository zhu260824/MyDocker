FROM ubuntu:18.04

MAINTAINER ZHULIN <871707394@qq.com>

RUN apt-get update && apt-get install -y openssh-server && apt-get install -y vim && apt-get install -y git && apt-get install -y wget

RUN mkdir /var/run/sshd

RUN echo 'root:root' |chpasswd

RUN sed -ri 's/^#?PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config

RUN sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config

RUN mkdir /root/.ssh

RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

EXPOSE 22

CMD ["/run.sh"]