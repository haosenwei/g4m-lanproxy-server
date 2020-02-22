# using alpine-glibc instead of alpine  is mainly because JDK relies on glibc
FROM huyisheng/g4m-jre8
# author
MAINTAINER hsw
EXPOSE 8090
EXPOSE 8900
# 添加软件
ADD . /opt/lanproxy/
# set env
# ENV PATH ${PATH}:${JAVA_HOME}/bin
# run container with base path:/opt
WORKDIR /opt/lanproxy
CMD ["sh","/opt/lanproxy/bin/startup.sh"]
