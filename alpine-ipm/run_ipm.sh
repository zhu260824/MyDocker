#!/bin/sh

ipmitool -I lanplus -H $HOST_IP -U $HOST_NAME -P $HOST_PASS raw 0x30 0x30 0x01 0x00
echo "ipmitool -I lanplus -H $HOST_IP -U $HOST_NAME -P $HOST_PASS raw 0x30 0x30 0x01 0x00"
ipmitool -I lanplus -H $HOST_IP -U $HOST_NAME -P $HOST_PASS raw 0x30 0x30 0x02 0xff $HOST_SPEED
echo "ipmitool -I lanplus -H $HOST_IP -U $HOST_NAME -P $HOST_PASS raw 0x30 0x30 0x02 0xff $HOST_SPEED"
