针对PI的Docker一体化部署
==============

	将在PI上需要部署的应用移植到Docker内，后面当需要部署时，只需要更换Docker Image即可，可以简化应用的部署。

## Docker文件结构

	目前Docker是基于resin/rpi-raspbian创建的，分为3层，每层分别为创建rabbitmq server、supervisord、app
    
    resin/rpi-raspbian 				//这个image是针对arm用的
       |-- rabbitma-server			//下载rabbitma对应的文件以及相关配置
           |-- supervisord 			//下载supervisord
                |-- pmi app 		//下载agent，导入启动脚本以及supervisord.conf文件

## Docker image创建方式
	
	分别对应的目录下执行 docker build -t xxxxx . 即可，因为创建的关联关系，目前创建的几个image名称分别为：
	rabitmq:		docker build -t rabbitmq .
	supervisord:	docker build -t supervisord .
	agent:			docker build -t with-agent .


## 启动方式

	使用Supervisord配置同时启动多个后台进程，目前只有rabbitmq和agent服务，后续如果有其他服务可以继续添加。

## Docker container的运行方式

 	使用以下指令运行一个Container：（因为指定CMD为启动supervisord命令，在启动container时，不需要在最后添加/bin/bash的命令）
 	docker run -d -P --name pmi \
 			-v /home/pi/Public/docker/agent/app:/opt/app \
 			-v /home/pi/Public/docker/agent/app/rabbit.log:/var/rabbit.log \
 			-v /home/pi/Public/docker/agent/supervisord.conf:/etc/supervisord.conf \
 			-v /home/pi/Public/docker/agent/start-agent.sh:/opt/start-agent.sh \
 			-v /home/pi/Public/docker/agent/start-rabbitmq.sh:/opt/start-rabbitmq.sh  \
 			with-agent

 	然后使用以下命令进行Docker：
 	docker exec -it pmi /bin/bash