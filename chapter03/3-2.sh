#!/bin/bash
#rpmcheck.sh

# 查询一个rpm包的描述、软件清单、和它是否能够被安装.
# 将安装结果保存到一个文件中
#

SUCCESS=0
E_NOARGS=65

if [ -z "$1" ]
then
   echo "Usage : `basename $0` rpm-file"
   exit $E_NOARGS
fi


{
   echo "Archive Description:"
   rpm -qpi $1
   echo "Archive Listing:"
   rpm -qpl $1
   echo "query rpm have been installed"
   rpm -i --test $1
   if [ "$?" -eq $SUCCESS ]
   then
      echo "$1 can be installed."	
   else
      echo "$1 cannot be installed."
   fi
   echo
} > "$1.test"

echo "Results of rpm test in file $1.test"

exit 0
