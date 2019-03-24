FROM zhu260824/ubuntu-base:tomcat8

MAINTAINER ZHULIN <871707394@qq.com>

ENV ANDROID_HOME=/home/android/android-sdk-linux
ENV PATH=$ANDROID_HOME/tools:$PATH

RUN mkdir /home/android && \
    cd /home/android  && \
    wget https://zl-file-china.oss-cn-beijing.aliyuncs.com/android-sdk_r24.4.1-linux.tgz && \
    tar -zvxf android-sdk_r24.4.1-linux.tgz

VOLUME ["/root/.jenkins"]

EXPOSE 22
EXPOSE 8080

CMD ["/run.sh"]
