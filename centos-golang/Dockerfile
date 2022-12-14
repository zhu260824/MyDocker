FROM zhu260824/centos-base:ssh
MAINTAINER ZHULIN <871707394@qq.com>

RUN yum -y update && yum install -y vim && yum install -y git && yum install -y wget && yum install -y golang

EXPOSE 22

CMD ["/run.sh"]
