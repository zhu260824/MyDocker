FROM zhu260824/ubuntu-base:jdk8

MAINTAINER ZHULIN <871707394@qq.com>

ADD run.sh /run.sh
RUN chmod +x /*.sh

RUN wget -O install.sh http://download.bt.cn/install/install-ubuntu_6.0.sh

RUN apt-get update && apt-get install -y curl

RUN curl -sL https://deb.nodesource.com/setup_8.x

RUN apt-get install -y nodejs && apt-get install -y npm

RUN npm install -g pm2

RUN npm install -g serve

EXPOSE 22
EXPOSE 8080
EXPOSE 80
EXPOSE 8888
EXPOSE 888

CMD ["/run.sh"]