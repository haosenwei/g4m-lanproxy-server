# g4m-lanproxy

docker run -d -u root --name lanproxy --network=kong-net --restart=always -p 8190:8090  -p 8900:8900 lanproxy