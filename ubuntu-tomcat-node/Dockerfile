FROM zhu260824/ubuntu-base:tomcat8

MAINTAINER ZHULIN <871707394@qq.com>

ADD run.sh /run.sh
RUN chmod +x /*.sh

ADD sources.list /etc/apt/sources.list

RUN apt-get update && apt-get install -y curl && \
curl -sL https://deb.nodesource.com/setup_current.x | -E bash - && \
apt-get install -y nodejs

EXPOSE 22
EXPOSE 8080
EXPOSE 80

CMD ["/run.sh"]