#clean up
#必须以root用户执行

cd /var/log
cat /dev/null > messages
cat /dev/null > wtmp
echo "logs is clean up" 
