#!/bin/bash
echo "[Start Script]===================================="
APP_HOME=/home/ec2-user/lgcns_api_server

echo "App Home: $APP_HOME"
echo "Who Am I:"
whoami

echo "[Edit App Folder Permission]"
sudo chown -R ec2-user:ec2-user $APP_HOME
cd $APP_HOME

echo "[Start Application]"
nohup java -jar build/libs/lgcns_api_server*.jar &

