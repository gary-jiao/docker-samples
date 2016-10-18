FROM apache:latest
MAINTAINER Docker Gary 

ADD . /var/local/VirtualTumorBoard_Server/
RUN cd /var/local/VirtualTumorBoard_Server/  &&\
    chmod +x /var/local/VirtualTumorBoard_Server/deploy_latest_build.sh  &&\
    chmod +x /var/local/VirtualTumorBoard_Server/ICPWebServer/icpstart.sh

EXPOSE 9000
EXPOSE 3306
EXPOSE 22
EXPOSE 80

CMD ["/usr/bin/supervisord"]