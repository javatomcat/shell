#!/bin/bash

#从/etc/fstab中一行行读取并打印

File=/etc/fstab

{
read line1
read line2
}<$File

echo "the line1 in $File is :"+$line1 
echo 
echo "the line2 in $File is :"+$line2 
