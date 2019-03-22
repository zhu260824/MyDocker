#!/bin/bash

#ENTRYPOINT ["/usr/bin/supervisord", "-n", "-c", "/etc/supervisord.conf"]
#CMD ["sh", "-c", "/run.sh ; /usr/bin/supervisord -n -c /etc/supervisord.conf"]
#nohup  /usr/bin/supervisord -n -c /etc/supervisord.conf &
#exec /usr/sbin/sshd -D
set -e

#androidfile="/home/android/android-sdk-linux/platforms"
#count=`ls $androidfile | wc -w`
#if [ "$count" > "0" ];
#then
#	echo yes | android update sdk --no-ui 
#else
# 	echo "android is init"
#fi 
#jenksfile="/usr/lib/tomcat/apache-tomcat-8.5.37/webapps/jenkins.war"
#if [ ! -f "$jenksfile" ]; 
#then
# 	wget -P /usr/lib/tomcat/apache-tomcat-8.5.37/webapps http://mirrors.jenkins.io/war/latest/jenkins.war
#else
#	echo "jenkins is download"
#fi

nohup ./run.sh > run.log 2>&1 & 

/usr/bin/supervisord -n -c /etc/supervisord.conf

exec "$@"