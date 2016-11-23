## 搭建npm私服的Dockerfile

参考教程：[CNPM搭建私有的NPM服务](http://blog.fens.me/nodejs-cnpm-npm/)


	docker build -t cnpmjs .
	
	docker run -d --name cnpmjs \
	         -v /opt/docker/cnpmjs/CMD:/usr/local/bin/CMD \
			 -v /opt/docker/cnpmjs/app/config/index.js:/opt/cnpmjs.org/config/index.js \
	         -p 7001:7001 -p 7002:7002 -p 20022:22 -p 23306:3306 \ 
	         cnpmjs

目前还不知道下载数据的目录是哪个，所以无法挂载。


以下是基于centos的调用，但centos在启动mysql上太麻烦了，所以改用ubuntu  
- docker run -d --privileged --name cnpmjs -p 23306:3306 -p 7001:7001 -p 7002:7002 -p 23322:22 cnpmjs /usr/sbin/init