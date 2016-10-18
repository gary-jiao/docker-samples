FROM rabbitmq:latest

ADD jdk-8u101-linux-arm32-vfp-hflt.tar.gz  /usr/local/

ENV JAVA_HOME=/usr/local/jdk1.8.0_101 PATH=$PATH:$JAVA_HOME/bin
RUN echo "JAVA_HOME=/usr/local/jdk1.8.0_101\nPATH=$PATH:$JAVA_HOME/bin" >> ~/.bashrc
ONBUILD ENV JAVA_HOME=/usr/local/jdk1.8.0_101 PATH=$PATH:$JAVA_HOME/bin

RUN apt-get -yqq install vim supervisor &&\
    echo "alias ll='ls -lh'" >> /root/.bashrc

RUN mkdir -p /var/log/supervisor

CMD []
