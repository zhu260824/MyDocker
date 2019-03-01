FROM tutum/centos:centos7

RUN yum -y install wget

ENV JAVA_HOME=/usr/lib/java/jdk1.8.0_161
ENV JRE_HOME=$JAVA_HOME/jre
ENV CLASSPATH=.:$JAVA_HOME/lib:$JRE_HOME/lib
ENV M2_HOME=/home/maven/apache-maven-3.6.0
ENV PATH=$JAVA_HOME/bin:$M2_HOME/bin:$PATH

RUN mkdir /usr/lib/java && \
	mkdir /home/java && \
	cd /home/java && \
	wget https://zl-file-china.oss-cn-beijing.aliyuncs.com/jdk-8u161-linux-x64.tar.gz && \
	tar -zxvf jdk-8u161-linux-x64.tar.gz -C /usr/lib/java

RUN mkdir /home/maven && \
	cd /home/maven && \
	wget https://zl-file-china.oss-cn-beijing.aliyuncs.com/linux/apache-maven-3.6.0-bin.tar.gz  && \
	tar -zxvf apache-maven-3.6.0-bin.tar.gz

RUN mkdir /usr/lib/tomcat && \
	mkdir /home/tomcat && \
	cd /home/tomcat && \
	wget https://zhulin-nas.oss-cn-shanghai.aliyuncs.com/apache-tomcat-8.5.37.tar.gz && \
	tar -zxvf apache-tomcat-8.5.37.tar.gz -C /usr/lib/tomcat

EXPOSE 22
EXPOSE 8080
EXPOSE 433