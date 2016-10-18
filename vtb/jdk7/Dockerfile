FROM ubuntu:latest
MAINTAINER Docker Gary 

ADD jdk-7u80-linux-x64.gz  /usr/local/

ENV JAVA_HOME=/usr/local/jdk1.7.0_80 PATH=$PATH:$JAVA_HOME/bin
RUN echo "JAVA_HOME=/usr/local/jdk1.7.0_80\nPATH=$PATH:$JAVA_HOME/bin" >> ~/.bashrc
ONBUILD ENV JAVA_HOME=/usr/local/jdk1.7.0_80 PATH=$PATH:$JAVA_HOME/bin

CMD java -version