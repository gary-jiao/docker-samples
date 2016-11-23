FROM centos:latest

ADD mongodb-org-3.0.repo /etc/yum.repos.d/

RUN yum -y install epel-release

RUN curl --silent --location https://rpm.nodesource.com/setup_6.x | bash -
RUN yum -y install net-tools nodejs

RUN yum -y install vim openssh-server supervisor &&\
    echo "alias ll='ls -lh'" >> /root/.bashrc

RUN sed -i 's/UsePAM yes/UsePAM no/g' /etc/ssh/sshd_config

RUN useradd admin &&\
    echo "admin:123" | chpasswd  &&\
    echo "admin   ALL=(ALL)       ALL" >> /etc/sudoers

RUN mkdir /var/run/sshd
RUN mkdir -p /var/log/supervisor

ADD supervisord.conf /etc/supervisord.conf

EXPOSE 8080 8090

CMD ["/usr/bin/supervisord"]
