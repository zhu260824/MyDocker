FROM zhu260824/alpine-base:tomcat8

MAINTAINER ZHULIN <871707394@qq.com>

ENV ANDROID_HOME=/mnt/android/android-sdk-linux
ENV PATH=$ANDROID_HOME/tools:$PATH

RUN rm -rf /etc/profile
ADD profile /etc/profile

VOLUME ["/root/.jenkins"]
VOLUME ["/mnt/android/android-sdk-linux"]

EXPOSE 22
EXPOSE 8080

CMD ["/run.sh"]
