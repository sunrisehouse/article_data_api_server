#!/bin/bash
echo "[App Start]======================"
cd /home/ec2-user/lgcns_data_manager
nohup java -jar build/libs/lgcns_api_server*.jar > .log &
