#!bin/bash
#Module-1
#To identify the Zombie/stale process and to kill
#Scheduled at 5.00pm everyday using crontab

ps -ef | grep "sleep" | grep -v grep | awk '{print $2}' | xargs -I{} kill {}
echo All the sleeping processes are killed sucessfully
