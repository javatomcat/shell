#!/bin/bash

#clean up version2
#必须以root用户执行

LOG_DIR=/var/log


cd $LOG_DIR


cat /dev/null > messages
cat /dev/null > wtmp


echo "logs is clean up" 
#脚本推出的正确方式
exit
