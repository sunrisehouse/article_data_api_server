#!/bin/bash
echo "[App Start]======================"
cd /home/ec2-user/lgcns_api_server
sudo touch .log
sudo chmod 777 .log
nohup java -jar build/libs/lgcns_api_server*.jar > .log &
