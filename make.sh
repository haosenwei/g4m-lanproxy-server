#!/bin/sh
BUILD_ID=dontKillMe
echo "build $1:$2"
version=v$2
if test  'master' != $1
then
  version="$1-v$2"
fi
echo $version
docker build -t g4m-lanproxy-server:${version} .
echo `docker images -a| grep g4m-lanproxy-server | grep ${version} | awk '{print $3}' `
docker login --username=郝森伟 registry-vpn.cn-beijing.aliyuncs.com -p hao189108
docker tag `docker images -a| grep g4m-lanproxy-server | grep ${version} | awk '{print $3}' ` registry-vpn.cn-beijing.aliyuncs.com/haosenwei/g4m-lanproxy-server:${version}
docker push registry-vpn.cn-beijing.aliyuncs.com/haosenwei/g4m-lanproxy-server:${version}