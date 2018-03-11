#!/bin/bash
#备份前24小时（1天）所有有变化的文件


#时间格式
backupfile=backup-$(date +%Y-%m-%d)


#如果没有给定参数名，则直接打印backupfile的名称
archive=${1:-$backupfile}
echo $archive

find . -mtime -1 -type f -print0 | xargs -0 tar rvf "$archive.tar"

gzip $archive.tar
echo "Directory $PWD backup in archive file \"$archive.tar.gz\"."
