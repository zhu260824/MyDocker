#!/bin/bash

#nohup sh /usr/lib/apache-tomcat-8.5.37/bin/catalina.sh run > tomcat.log 2>&1 & 

exec /usr/sbin/sshd -D
