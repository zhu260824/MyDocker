#!/bin/bash

if [ ! -f /usr/sbin/init ]; then
    /usr/sbin/init
fi

exec /usr/sbin/sshd -D