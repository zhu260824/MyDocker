FROM zhu260824/ubuntu-base:ssh

MAINTAINER ZHULIN <871707394@qq.com>

ENV JAVA_HOME=/usr/lib/java/jdk1.8.0_202
ENV JRE_HOME=$JAVA_HOME/jre
ENV CLASSPATH=.:$JAVA_HOME/lib:$JRE_HOME/lib
ENV M2_HOME=/mnt/maven
ENV GRADLE_HOME=/mnt/gradle
ENV PATH=$JAVA_HOME/bin:$M2_HOME/bin:$GRADLE_HOME/bin:$PATH

RUN mkdir /usr/lib/java && \
	mkdir /home/java && \
	cd /home/java && \
	wget https://zl-file-china.oss-cn-beijing.aliyuncs.com/jdk-8u202-linux-x64.tar.gz && \
	tar -zxvf jdk-8u202-linux-x64.tar.gz -C /usr/lib/java

VOLUME ["/mnt/maven"]
VOLUME ["/mnt/gradle"]

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]