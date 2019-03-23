FROM zhu260824/ubuntu-base:ssh

MAINTAINER ZHULIN <871707394@qq.com>

ENV JAVA_HOME=/usr/lib/java/jdk1.8.0_161
ENV JRE_HOME=$JAVA_HOME/jre
ENV CLASSPATH=.:$JAVA_HOME/lib:$JRE_HOME/lib
ENV M2_HOME=/home/maven/apache-maven-3.6.0
ENV GRADLE_HOME=/home/gradle/gradle-5.1
ENV PATH=$JAVA_HOME/bin:$M2_HOME/bin:$GRADLE_HOME/bin:$PATH

RUN mkdir /usr/lib/java && \
	mkdir /home/java && \
	cd /home/java && \
	wget https://zl-file-china.oss-cn-beijing.aliyuncs.com/jdk-8u161-linux-x64.tar.gz && \
	tar -zxvf jdk-8u161-linux-x64.tar.gz -C /usr/lib/java

RUN mkdir /home/maven && \
	cd /home/maven && \
	wget https://zl-file-china.oss-cn-beijing.aliyuncs.com/linux/apache-maven-3.6.0-bin.tar.gz  && \
	tar -zxvf apache-maven-3.6.0-bin.tar.gz

RUN mkdir /home/gradle && \
	cd /home/gradle && \
	wget https://zl-file-china.oss-cn-beijing.aliyuncs.com/linux/gradle-5.1.tar.gz && \
	tar -zxvf gradle-5.1.tar.gz  

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]