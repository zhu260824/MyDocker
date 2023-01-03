FROM ubuntu:16.04

MAINTAINER ZHULIN <871707394@qq.com>

RUN apt -y update && apt-get -y upgrade && apt install -y tzdata; \
    apt clean;

RUN apt-get install -y sudo && apt-get install -y vim && apt-get install -y git && apt-get install -y wget; \
    apt clean;

# sshd
RUN mkdir /var/run/sshd; \
    apt-get install -y openssh-server; \
    sed -ri 's/^#?PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config; \
    sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config; \
    echo 'root:root' |chpasswd ;\
    mkdir /root/.ssh; \
    apt clean;

# entrypoint
RUN { \
    echo '#!/bin/bash -eu'; \
    echo 'ln -fs /usr/share/zoneinfo/${TZ} /etc/localtime'; \
    echo 'exec "$@"'; \
    } > /usr/local/bin/entry_point.sh; \
    chmod +x /usr/local/bin/entry_point.sh;

ENV TZ Asia/Shanghai

EXPOSE 22

ENTRYPOINT ["entry_point.sh"]
CMD    ["/usr/sbin/sshd", "-D", "-e"]
