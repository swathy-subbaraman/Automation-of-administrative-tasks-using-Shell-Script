#!/bin/bash
#Author: Team 5
#Date : 03.05.2023
#Description: Backup etc and var file system
#Modified 03.05.2023

tar cvf /tmp/backup.tar /etc /var

gzip /tmp/backup.tar

#find /tmp/backup.tar.gz -mtime -1 -type f -print &> /dev/null

if [ $? -eq 0 ]
then
        echo BACKING UP FILES
        echo Archiving Backup
        echo Backup done successfully
        echo
        #scp /tmp/backup.tar.gz root@192.168.1.x:/path
else
        echo Backup Failed
fi
