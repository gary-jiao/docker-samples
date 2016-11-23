FROM centos:7.2.1511
MAINTAINER Docker Gary 

RUN yum -y update && yum -y upgrade
RUN yum -y install git nodejs
RUN npm install -g cnpm

RUN rpm -Uvh http://dev.mysql.com/get/mysql-community-release-el7-5.noarch.rpm
RUN yum -y install mysql-community-server
RUN systemctl enable mysqld &&\  
    systemctl start mysqld &&\
    mysql -e "grant all privileges on *.* to 'root'@'%' identified by 'mysql';"&&\  
    mysql -e "grant all privileges on *.* to 'root'@'localhost' identified by 'mysql';"&&\  
    mysql -uroot -pmysql -e "create database cnpmjs_test default character set utf8;"

RUN cd /opt &&\
	git clone https://github.com/cnpm/cnpmjs.org.git &&\
	cd cnpmjs.org &&\
	npm install

ADD CMD /usr/local/bin/CMD
COPY my.cnf /etc/mysql/my.cnf

EXPOSE 3306 7001 7002

CMD ["/usr/local/bin/CMD"]