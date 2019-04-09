FROM zhu260824/alpine-base:jdk8

MAINTAINER ZHULIN <871707394@qq.com>

RUN apk --update add --no-cache vim && apk --update add --no-cache git && apk --update add --no-cache wget

ADD apache-tomcat-8.5.37.tar.gz /usr/lib

ADD run.sh /run.sh
RUN chmod +x /*.sh

EXPOSE 22
EXPOSE 8080

CMD ["/run.sh"]
