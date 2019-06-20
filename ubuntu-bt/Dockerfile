FROM zhu260824/ubuntu-base:jdk8

MAINTAINER ZHULIN <871707394@qq.com>

ADD run.sh /run.sh
RUN chmod +x /*.sh

RUN wget -O install.sh http://download.bt.cn/install/install-ubuntu_6.0.sh

EXPOSE 22
EXPOSE 8080
EXPOSE 80
EXPOSE 8888
EXPOSE 888

CMD ["/run.sh"]