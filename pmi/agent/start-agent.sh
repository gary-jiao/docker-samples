#!/bin/bash
#service agent-service start

scriptName='di-agent'
prc=`ps aux | grep "$scriptName" | grep -v "grep" | wc -l`
# [ "$prc" == "2" ] && { exit 0; }

while [ true ]; do
  users=`rabbitmqctl list_users | grep pi`
  [ -z "$users" ] && {
     echo 'user pi not found ' >> /var/agent-service.log ;
     sleep 2;
     continue;
   }
   echo 'found user pi, starting agent......' >> /var/agent-service.log
   java -jar /opt/workspace/di-agent-0.0.1-SNAPSHOT.jar &
   exit 0
done
