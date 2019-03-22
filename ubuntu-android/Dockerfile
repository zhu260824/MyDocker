FROM ubuntu:16.04

RUN apt-get update && apt-get install -y openssh-server && apt-get install -y vim && apt-get install -y git && apt-get install -y wget
RUN mkdir /var/run/sshd
RUN echo 'root:123456' | chpasswd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

ENV JAVA_HOME=/usr/lib/java/jdk1.8.0_161
ENV JRE_HOME=$JAVA_HOME/jre
ENV CLASSPATH=.:$JAVA_HOME/lib:$JRE_HOME/lib
ENV M2_HOME=/home/maven/apache-maven-3.6.0
ENV GRADLE_HOME=/home/gradle/gradle-5.1
ENV ANDROID_HOME=/home/android/android-sdk-linux
ENV PATH=$JAVA_HOME/bin:$M2_HOME/bin:$GRADLE_HOME/bin:$ANDROID_HOME/tools:$PATH

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

CMD ["/usr/sbin/sshd", "-D"]