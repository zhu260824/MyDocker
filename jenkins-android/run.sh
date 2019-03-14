#!/bin/bash
cd /home/android/android-sdk-linux/platforms
count=`ls $*|wc -w`
if [ "$count" > "0" ];
then
 yes | sudo android update sdk --no-ui
else
 echo "android is init"
fi

cd /usr/lib/tomcat/apache-tomcat-8.5.37/bin
chmod 777 *.sh
./startup.sh start