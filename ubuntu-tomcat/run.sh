#!/bin/bash

#nohup /usr/sbin/sshd -D > sshd.log 2>&1 & 

#sh /usr/lib/tomcat/apache-tomcat-8.5.37/bin/catalina.sh run

nohup sh /usr/lib/tomcat/apache-tomcat-8.5.37/bin/catalina.sh run > tomcat.log 2>&1 & 

exec /usr/sbin/sshd -D
