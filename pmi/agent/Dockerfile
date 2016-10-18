FROM supervisord:latest

ADD start-rabbitmq.sh /opt/
ADD start-agent.sh /opt/

RUN mkdir /opt/workspace &&\
    mkdir /opt/app &&\
    chmod +x /opt/*.sh &&\
    cd /opt/workspace &&\
    wget http://10.243.118.180:32795/archive/di-agent-0.0.1-SNAPSHOT.jar

ADD supervisord.conf /etc/supervisord.conf

CMD ["/usr/bin/supervisord"]
