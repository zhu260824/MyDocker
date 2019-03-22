FROM zhu260824/alpine-base:jdk8

MAINTAINER ZHULIN <871707394@qq.com>

RUN apk --update add --no-cache vim && apk --update add --no-cache git && apk --update add --no-cache wget

ENV M2_HOME=/home/maven/apache-maven-3.6.0
ENV GRADLE_HOME=/home/gradle/gradle-5.1
ENV ANDROID_HOME=/home/android/android-sdk-linux
ENV PATH=$M2_HOME/bin:$GRADLE_HOME/bin:$ANDROID_HOME/tools:$PATH

RUN apk add --update supervisor && rm  -rf /tmp/* /var/cache/apk/*

ADD supervisord.conf /etc/supervisord.conf

RUN mkdir -p /etc/supervisor.conf.d && \
    mkdir -p /var/log/supervisor

ADD supervisor_tomcat.conf /etc/supervisor.conf.d/tomcat.conf

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /*.sh

RUN mkdir /home/maven && \
	cd /home/maven && \
	wget https://zl-file-china.oss-cn-beijing.aliyuncs.com/linux/apache-maven-3.6.0-bin.tar.gz  && \
	tar -zxvf apache-maven-3.6.0-bin.tar.gz

RUN mkdir /home/gradle && \
	cd /home/gradle && \
	wget https://zl-file-china.oss-cn-beijing.aliyuncs.com/linux/gradle-5.1.tar.gz && \
	tar -zxvf gradle-5.1.tar.gz  

RUN mkdir /usr/lib/tomcat && \
	mkdir /home/tomcat && \
	cd /home/tomcat && \
	wget https://zhulin-nas.oss-cn-shanghai.aliyuncs.com/apache-tomcat-8.5.37.tar.gz && \
	tar -zxvf apache-tomcat-8.5.37.tar.gz -C /usr/lib/tomcat

RUN mkdir /home/android && \
    cd /home/android  && \
    wget https://zl-file-china.oss-cn-beijing.aliyuncs.com/android-sdk_r24.4.1-linux.tgz && \
    tar -zvxf android-sdk_r24.4.1-linux.tgz

EXPOSE 22
EXPOSE 8080

ENTRYPOINT ["/entrypoint.sh"]
