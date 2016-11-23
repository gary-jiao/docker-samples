FROM ubuntu:14.04
MAINTAINER Docker Gary 

RUN apt-get -y update && apt-get -y upgrade

RUN apt-get -y install vim mysql-server
RUN service mysql start &&\  
	mysql -e "grant all privileges on *.* to 'root'@'%' identified by 'mysql';"&&\  
	mysql -e "grant all privileges on *.* to 'root'@'localhost' identified by 'mysql';"&&\  
	mysql -uroot -pmysql -e "create database cnpmjs_test default character set utf8;"

RUN apt-get install -y openssh-server zip supervisor &&\
	echo "alias ll='ls -lh'" >> /root/.bashrc &&\
	sed -i 's/UsePAM yes/UsePAM no/g' /etc/ssh/sshd_config &&\
	useradd admin &&\
        echo "admin:123" | chpasswd  &&\
        echo "admin   ALL=(ALL)       ALL" >> /etc/sudoers &&\
	mkdir /var/run/sshd  &&\
	mkdir -p /var/log/supervisor
ADD supervisord.conf /etc/supervisord.conf

RUN apt-get install -y curl &&\
	curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -  &&\
	apt-get -y install git nodejs  &&\
	npm install -g cnpm   &&\
	cd /opt &&\
	git clone https://github.com/cnpm/cnpmjs.org.git &&\
	cd cnpmjs.org &&\
	npm install

ADD CMD /usr/local/bin/CMD
COPY my.cnf /etc/mysql/my.cnf

EXPOSE 3306 7001 7002 22

CMD ["/usr/local/bin/CMD"]