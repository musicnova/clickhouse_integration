#!/bin/sh
set -e -x
curl https://registry-1.docker.io/v2/ && echo Works || echo Problem
docker run --hostname=quickstart.cloudera --privileged=true -p 7180:7180 -p 8888:8888 -p 7138:7138 -p 8020:8020 -p 50010:50010 -p 10110:10110 -p 10111:10111 -p 7182:7182 -p 7432:7432 -p 7190:7190 -p 7191:7191 -p 9000:9000 -p 7184:7184 -p 7185:7185 -p 8084:8084 -p 10101:10101 -p 8086:8086 -p 8032:8032 -p 8033:8033 -p 8088:8088 -p 8090:8090 -p 8042:8042 -p 8044:8044 -p 19888:19888 -p 19890:19890 -p 8085:8085 -p 10000:10000 -p 10002:10002 -p 11000:11000 -p 11443:11443 -p 8000:8000 -t -i -d stankudryavtsev/cloudera-spark2:5.14.4-v2 /bin/bash
docker ps
