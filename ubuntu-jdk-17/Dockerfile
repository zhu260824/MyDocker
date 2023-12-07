FROM zhu260824/ubuntu-base:ssh-20

MAINTAINER ZHULIN <871707394@qq.com>

ENV DEBIAN_FRONTEND=noninteractive

RUN apt -y update && apt-get -y upgrade && apt-get install -y openjdk-17-jre && apt-get install -y openjdk-17-jdk && apt-get install -y supervisor && apt clean;

RUN mkdir -p /var/run/sshd
RUN mkdir -p /var/log/supervisor

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf


EXPOSE 22

CMD ["/usr/bin/supervisord"]
