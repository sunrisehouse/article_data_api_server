#!/bin/bash
echo "[App Start]======================"
cd /home/ec2-user/lgcns_api_server
nohup java -jar build/libs/lgcns_api_server*.jar &
