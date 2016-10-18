FROM mysql:latest
MAINTAINER Docker Gary 

RUN apt-get update
RUN apt-get install -y openssh-server zip supervisor apache2
RUN sed -i 's/UsePAM yes/UsePAM no/g' /etc/ssh/sshd_config

RUN useradd admin &&\
    echo "admin:123" | chpasswd  &&\
    echo "admin   ALL=(ALL)       ALL" >> /etc/sudoers

RUN mkdir /var/run/sshd

RUN mkdir -p /var/log/supervisor
COPY supervisord.conf /etc/supervisord.conf

EXPOSE 3306
EXPOSE 22
EXPOSE 80

CMD ["/usr/bin/supervisord"]