FROM zhu260824/centos-base:jdk
MAINTAINER ZHULIN <871707394@qq.com>

ADD start.sh /start.sh
RUN chmod +x /*.sh

RUN mkdir /usr/lib/tomcat && \
	mkdir /home/tomcat && \
	cd /home/tomcat && \
	wget https://zhulin-nas.oss-cn-shanghai.aliyuncs.com/apache-tomcat-8.5.37.tar.gz && \
	tar -zxvf apache-tomcat-8.5.37.tar.gz -C /usr/lib/tomcat

EXPOSE 22
EXPOSE 8080

CMD ["/start.sh"]