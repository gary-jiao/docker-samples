FROM jdk7:latest
MAINTAINER Docker Gary 

RUN apt-get -y install mysql-server
RUN service mysql start &&\  
    mysql -e "grant all privileges on *.* to 'root'@'%' identified by '123';"&&\  
    mysql -e "grant all privileges on *.* to 'root'@'localhost' identified by '123';"&&\  
    mysql -uroot -p123 -e "create database icpweb_zh default character set utf8;" &&\
    mysql -uroot -p123 -e "create database icpweb_en default character set utf8;"

COPY my.cnf /etc/mysql/my.cnf

EXPOSE 3306

CMD ["/usr/bin/mysqld_safe"] 
