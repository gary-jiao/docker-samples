FROM ubuntu:14.04
MAINTAINER garyjiao<gary.jiao@aliyun.com>

ENV SSH_PASSWORD    Greed1zGood
ENV SS_PASSWORD     Greed1zGood
ENV PORT            8888
ENV version         1.0.2

WORKDIR /
RUN apt-get update
RUN apt-get -y upgrade

RUN set -x && \
  apt-get install -y openssh-server && \
  mkdir /var/run/sshd && \
  echo 'root:'$SSH_PASSWORD |chpasswd && \
  echo 'PermitRootLogin yes' > /etc/ssh/sshd_config

RUN set -x && \
  apt-get update && \
  apt-get install -y python-pip && \
  pip install --upgrade pip && \
  pip install shadowsocks && \
  apt-get clean

ADD CMD /usr/local/bin/CMD
RUN set -x && \   
  chmod 777 /usr/local/bin/CMD && \
  echo "sudo /usr/local/bin/ssserver -k $SS_PASSWORD -p $PORT -m aes-256-cfb --user nobody -d start">>/usr/local/bin/CMD && \
  echo "/usr/sbin/sshd -D">>/usr/local/bin/CMD
  
EXPOSE 22
EXPOSE $PORT

CMD ["/usr/local/bin/CMD"]
