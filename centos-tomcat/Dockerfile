FROM zhu260824/centos-base:jdk8

MAINTAINER ZHULIN <871707394@qq.com>

ADD start.sh /start.sh
RUN chmod +x /*.sh

ADD apache-tomcat-8.5.37.tar.gz /usr/lib

EXPOSE 22
EXPOSE 8080

CMD ["/start.sh"]
