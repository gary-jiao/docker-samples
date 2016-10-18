ps aux|grep play|grep -v grep |awk '{print $2}'|xargs kill

CURRENT=`pwd`

cd ${CURRENT}/tmp
#make a temp working directory

if [ "$1" = "-r" ]; 
then
  echo 'Redownload the package .........'
  rm -rf icpweb_tmp
  mkdir icpweb_tmp
  cd icpweb_tmp

  #wget http://10.243.117.80:8080/userContent/lastbuild/ICPWebServer/*zip*/ICPWebServer.zip
  wget http://10.243.116.168:8080/userContent/lastbuild/ICPWebServer/*zip*/ICPWebServer.zip

  unzip ICPWebServer.zip

  cd ICPWebServer

  unzip icpwebserver-1.0-SNAPSHOT.zip

  cp -r ./lib ./icpwebserver-1.0-SNAPSHOT/lib

  yes|cp  ${CURRENT}/ICPWebServer/Dcm2Mha  ./icpwebserver-1.0-SNAPSHOT/lib

  chmod +x ./icpwebserver-1.0-SNAPSHOT/lib/Dcm2Mha

  cp -r ./icpwebserver-1.0-SNAPSHOT/ ${CURRENT}/ICPWebServer/icpwebserver-1.0-SNAPSHOT/

fi

yes|rm ${CURRENT}/ICPWebServer/icpwebserver-1.0-SNAPSHOT/RUNNING_PID

cd $CURRENT

nohup ${CURRENT}/ICPWebServer/icpstart.sh &



