#!/bin/bash
#androidfile="/home/android/android-sdk-linux/platforms"
#count=`ls $androidfile | wc -w`
#if [ "$count" > "0" ];
#then
#	echo yes | android update sdk --no-ui 
#else
#	echo "android is init"
#fi 
#jenksfile="/usr/lib/tomcat/apache-tomcat-8.5.37/webapps/jenkins.war"
#if [ ! -f "$jenksfile" ]; 
#then
# 	wget -P /usr/lib/tomcat/apache-tomcat-8.5.37/webapps http://mirrors.jenkins.io/war/latest/jenkins.war
#else
#	echo "jenkins is download"
#fi

if [ ! -f /usr/sbin/init ]; then
    /usr/sbin/init
fi

if [ "${AUTHORIZED_KEYS}" != "**None**" ]; then
    echo "=> Found authorized keys"
    mkdir -p /root/.ssh
    chmod 700 /root/.ssh
    touch /root/.ssh/authorized_keys
    chmod 600 /root/.ssh/authorized_keys
    IFS=$'\n'
    arr=$(echo ${AUTHORIZED_KEYS} | tr "," "\n")
    for x in $arr
    do
        x=$(echo $x |sed -e 's/^ *//' -e 's/ *$//')
        cat /root/.ssh/authorized_keys | grep "$x" >/dev/null 2>&1
        if [ $? -ne 0 ]; then
            echo "=> Adding public key to /root/.ssh/authorized_keys: $x"
            echo "$x" >> /root/.ssh/authorized_keys
        fi
    done
fi

if [ ! -f /.root_pw_set ]; then
	/set_root_pw.sh
fi
/usr/bin/supervisord -n -c /etc/supervisord.conf
exec /usr/sbin/sshd -D