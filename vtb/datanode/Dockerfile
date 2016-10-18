FROM apache:latest
MAINTAINER Docker Gary 

COPY supervisord.conf /etc/supervisord.conf
COPY autostart.sh /home/autostart.sh
COPY .ssh /root/

EXPOSE 3306 22 80

CMD ["/usr/bin/supervisord"]