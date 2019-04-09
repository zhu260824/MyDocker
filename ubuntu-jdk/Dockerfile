FROM zhu260824/ubuntu-base:ssh

MAINTAINER ZHULIN <871707394@qq.com>

ENV JAVA_HOME=/usr/lib/jdk1.8.0_202
ENV JRE_HOME=$JAVA_HOME/jre
ENV CLASSPATH=.:$JAVA_HOME/lib:$JRE_HOME/lib
ENV M2_HOME=/mnt/maven
ENV GRADLE_HOME=/mnt/gradle
ENV PATH=$JAVA_HOME/bin:$M2_HOME/bin:$GRADLE_HOME/bin:$PATH

ADD jdk-8u202-linux-x64.tar.gz /usr/lib

VOLUME ["/mnt/maven"]
VOLUME ["/mnt/gradle"]

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]