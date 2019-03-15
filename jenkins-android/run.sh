#!/bin/bash
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
TOMCAT_HOME="/usr/lib/tomcat/apache-tomcat-8.5.37"  
chmod 777 /usr/lib/tomcat/apache-tomcat-8.5.37/bin/*.sh
sleep 5s
#startup tomcat 
cd ${TOMCAT_HOME}/bin/
./catalina.sh start