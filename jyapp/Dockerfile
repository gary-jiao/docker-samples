FROM centos:latest

ADD mongodb-org-3.0.repo /etc/yum.repos.d/

RUN yum -y install epel-release

RUN yum -y install nodejs

RUN yum -y install vim supervisor &&\
    echo "alias ll='ls -lh'" >> /root/.bashrc
RUN mkdir -p /var/log/supervisor

RUN yum install -y mongodb-org mongodb-org-server mongodb-org-shell mongodb-org-mongos mongodb-org-tools
RUN systemctl enable mongod

ADD supervisord.conf /etc/supervisord.conf

CMD ["/usr/bin/supervisord"]
