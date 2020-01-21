# using alpine-glibc instead of alpine  is mainly because JDK relies on glibc
FROM hsw/java8:1.0
# author
MAINTAINER hsw
EXPOSE 8090
# 添加软件
ADD . /opt/lanproxy/
# set env
# ENV PATH ${PATH}:${JAVA_HOME}/bin
# run container with base path:/opt
WORKDIR /opt/lanproxy
CMD ["sh","/opt/lanproxy/bin/startup.sh"]
