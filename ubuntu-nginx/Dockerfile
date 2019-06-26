FROM zhu260824/ubuntu-base:jdk8

MAINTAINER ZHULIN <871707394@qq.com>

RUN apt-get update && apt-get install -y nginx

ADD run.sh /run.sh
RUN chmod +x /*.sh
ADD default.conf /etc/nginx/conf.d/default.conf
RUN rm -rf /etc/nginx/sites-enabled/default

EXPOSE 22
EXPOSE 8080

CMD ["/run.sh"]