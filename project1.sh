#!/bin/bash
IP='192.168.122.1'

./exec/APM1 ${IP} &
PID1=$!
echo ${PID1} 

#kill -9 ${PID1}
ps aux | grep -v grep | grep ${PID1} | awk '{ print "CPU: " $3 " MEM: " $4 }'
