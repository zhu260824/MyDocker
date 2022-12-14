FROM zhu260824/centos-base:ssh
MAINTAINER ZHULIN <871707394@qq.com>

RUN yum update && yum install -y vim && yum install -y git && yum install -y wget && yum install golang

EXPOSE 22

CMD ["/run.sh"]
