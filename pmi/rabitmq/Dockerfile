FROM resin/rpi-raspbian
MAINTAINER Aaron Wen <aaron.wen@medtronic.com>
ENV REFRESH_AT 2016-10-13
ENV HOSTIP "10.243.118.75"
RUN apt-get update -yqq
RUN apt-get install -yqq wget
RUN echo 'deb http://www.rabbitmq.com/debian/ testing main' | tee /etc/apt/sources.list.d/rabbitmq.list
RUN wget -O- https://www.rabbitmq.com/rabbitmq-release-signing-key.asc | apt-key add -
RUN apt-get update -yqq
RUN apt-get install -yqq rabbitmq-server ser2net apt-utils net-tools
EXPOSE 15672
ADD entrypoint.sh /entrypoint.sh
ADD ser2net.conf /etc/ser2net.conf
CMD []
