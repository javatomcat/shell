#!/bin/bash

#clean up version3
#必须以root用户执行

LOG_DIR=/var/log
LINES=50       #Default line number
E_XCD=66       #the exit code for cann't cd into the specify direction 
E_NOTROOT=67   #the exit code for the user doesn't root

if [ $UID -ne 0 ] 
then
    echo "Must be root to run this script."
    exit $E_NOTROOT	
fi

if [ -n "$1" ]
then 
    line=$1 
else
    line=$LINES 
fi


cd $LOG_DIR || {
    echo "Cannot change to necessary directory." >&2
    exit $E_XCD
}


tail -$line messages >msg.tmp
mv msg.tmp messages




#cat /dev/null > messages
#cat /dev/null > wtmp


echo "logs is clean up" 
#脚本推出的正确方式
exit 0
