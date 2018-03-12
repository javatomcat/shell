#!/bin/bash
echo $1
#赋值与替换
#********************************************
# =号的两边都不能有空白符
# variable =value
# 表示variable的命令，并且该命令带了一个参数“=value”
# 
#
# variable= value
# 则表示variable赋值为空，并且只能给一个命令 value
#********************************************


a=374
hello=$a

echo hello 
echo $hello
echo "$hello"
echo "${hello}"

echo 


hello="A B C D"

#把变量引起来会保留空白字符.
echo $hello
echo "$hello"


