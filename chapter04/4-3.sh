#!/bin/bash

a=23
echo $a 
b=$a
echo $b

#将echo命令的结果赋值给a
a=`echo Hello!`
echo $a

a=`ls -l`
#会将多余的tab及空白符删除
echo $a
echo 
#保持原样输出
echo "$a"

exit 0
