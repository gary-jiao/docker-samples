#!/bin/bash

echo "start entry point $(date +%Y%m%dT%H%M%S)....." >> /var/rabbit.log
service rabbitmq-server start
echo "rabbitmq server started......" >> /var/rabbit.log

users=`rabbitmqctl list_users | grep pi`
[ -z "$users" ] && {
  echo "start to install plugin ....." >> /var/rabbit.log;
  rabbitmq-plugins enable rabbitmq_management rabbitmq_shovel rabbitmq_sho    vel_management;
  
  echo "start to set user ....... " >> /var/rabbit.log;
  rabbitmqctl add_user pi SHpass08;
  rabbitmqctl set_user_tags pi administrator;
  rabbitmqctl set_permissions -p / pi ".*" ".*" ".*";
  service rabbitmq-server stop;
  service rabbitmq-server start;
}
