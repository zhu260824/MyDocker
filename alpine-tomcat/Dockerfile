FROM zhu260824/alpine-base:jdk8

MAINTAINER ZHULIN <871707394@qq.com>

RUN apk --update add --no-cache vim && apk --update add --no-cache git && apk --update add --no-cache wget

RUN wget https://zhulin-nas.oss-cn-shanghai.aliyuncs.com/apache-tomcat-8.5.37.tar.gz
RUN tar -zxvf apache-tomcat-8.5.37.tar.gz
RUN mv apache-tomcat-8.5.37 /usr/lib
RUN rm -rf apache-tomcat-8.5.37.tar.gz

ADD run.sh /run.sh
RUN chmod +x /*.sh

EXPOSE 22
EXPOSE 8080

CMD ["/run.sh"]
