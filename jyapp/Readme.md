## 安装说明

#### mongo安装

使用了mongo官方的docker，直接使用即可([git地址](https://github.com/docker-library/mongo.git))。  
docker run --name mongo-db -p 27017:27017 -d mongo

#### jyapp安装

因为是使用npm进行编译启动，所以要启动这个应用，需要安装的工具比较多。
- epel7
- nodejs
- pm2
