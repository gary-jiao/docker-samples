#!/bin/bash
service rabbitmq-server start
rabbitmq-plugins enable rabbitmq_management rabbitmq_shovel rabbitmq_shovel_management
rabbitmqctl add_user pi SHpass08
rabbitmqctl set_user_tags pi administrator
rabbitmqctl set_permissions -p / pi ".*" ".*" ".*"
service rabbitmq-server stop
rabbitmq-server
