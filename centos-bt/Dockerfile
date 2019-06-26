FROM zhu260824/centos-base:ssh
MAINTAINER ZHULIN <871707394@qq.com>

RUN yum install -y wget && wget -O install.sh http://download.bt.cn/install/install_6.0.sh

EXPOSE 22
EXPOSE 21
EXPOSE 8888
EXPOSE 80
EXPOSE 88
EXPOSE 888

CMD ["/run.sh"]
