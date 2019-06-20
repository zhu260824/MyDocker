#!/bin/bash
if [ -f "/etc/init.d/bt" ];then
    /etc/init.d/bt start
fi
if [ -f "/etc/init.d/redis" ];then
    /etc/init.d/redis start
fi
if [ -f "/etc/init.d/mysqld" ];then
    /etc/init.d/mysqld start
fi
exec /usr/sbin/sshd -D
