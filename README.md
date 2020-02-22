# g4m-lanproxy

docker run -d -u root --name lanproxy --network=kong-net --restart=always -p 8190:8090 \
 -p 8900:8900 \
 -p 8901:8901 \
 -p 8902:8902 \
 -p 8903:8903 \
 -p 8904:8904 \
 -p 8905:8905 \
 -p 8906:8906 \
 -p 8907:8907 \
 -p 8908:8908 \
 -p 8909:8909 \
 -p 8910:8910 \
 huyisheng/g4m-lanproxy-server:latest