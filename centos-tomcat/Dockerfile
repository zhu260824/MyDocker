FROM zhu260824/centos-base:jdk8

MAINTAINER ZHULIN <871707394@qq.com>

ADD start.sh /start.sh
RUN chmod +x /*.sh

RUN wget https://zhulin-nas.oss-cn-shanghai.aliyuncs.com/apache-tomcat-8.5.37.tar.gz
RUN tar -zxvf apache-tomcat-8.5.37.tar.gz
RUN mv apache-tomcat-8.5.37 /usr/lib
RUN rm -rf apache-tomcat-8.5.37.tar.gz

EXPOSE 22
EXPOSE 8080

CMD ["/start.sh"]
