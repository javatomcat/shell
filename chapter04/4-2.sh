#!/bin/bash
#裸变量

echo 

# 当变量被赋值而不是引用时，我们称之为裸变量

#赋值

a=879
echo "The value of a is $a."

#命令 let 赋值
let a=16+5

echo "The value if a is $a ." 


echo 

echo -n "values of a in the loop are:"
for a in {7..20}
do
    echo -n "$a"
done


echo
echo

#命令 read 赋值
echo -n "Enter a "
read a
echo "The value of a is now $a ."


echo 


exit 0
