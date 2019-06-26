FROM zhu260824/ubuntu-base:ssh

MAINTAINER ZHULIN <871707394@qq.com>

ENV JAVA_HOME=/mnt/jdk1.8.0_202
ENV JRE_HOME=$JAVA_HOME/jre
ENV CLASSPATH=.:$JAVA_HOME/lib:$JRE_HOME/lib
ENV M2_HOME=/mnt/maven
ENV GRADLE_HOME=/mnt/gradle
ENV PATH=$JAVA_HOME/bin:$M2_HOME/bin:$GRADLE_HOME/bin:$PATH

ADD run.sh /run.sh
RUN chmod +x /*.sh
RUN rm -rf /etc/profile
ADD profile /etc/profile

VOLUME ["/mnt/maven"]
VOLUME ["/mnt/gradle"]
VOLUME ["/mnt/jdk1.8.0_202"]

EXPOSE 22

CMD ["/run.sh"]