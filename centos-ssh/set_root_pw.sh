#!/bin/bash

if [ -f /.root_pw_set ]; then
	echo "Root password already set!"
	exit 0
fi

PASS=${ROOT_PASS:-$(pwgen -s 12 1)}
_word=$( [ ${ROOT_PASS} ] && echo "preset" || echo "random" )
echo "=> Setting a ${_word} password to the root user"
echo "root:$PASS" | chpasswd

echo "=> Done!"
touch /.root_pw_set

echo "========================================================================" > root.txt
echo "You can now connect to this CentOS container via SSH using:" >> root.txt
echo ""  >> root.txt
echo "    ssh -p <port> root@<host>"  >> root.txt
echo "and enter the root password '$PASS' when prompted"  >> root.txt
echo ""  >> root.txt
echo "Please remember to change the above password as soon as possible!"  >> root.txt
echo "========================================================================"  >> root.txt