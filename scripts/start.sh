#!/bin/bash
echo "[Start Script]========================================"
APP_HOME=/home/ec2-user/lgcns_api_server
BUILD_DIR_PATH=$APP_HOME/build/libs
BUILD_OUTPUT_PATH=$BUILD_DIR_PATH/lgcns_api_server-0.0.1.jar

echo "App Home: $APP_HOME"
echo "Build Output: $BUILD_OUTPUT_PATH"

cd $APP_HOME
pwd

nohup java -jar $BUILD_OUTPUT_PATH > $APP_HOME/nohup.out 2>&1 &
echo "[Start Script]========================================"
