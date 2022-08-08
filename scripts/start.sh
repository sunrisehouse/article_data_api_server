#!/bin/bash
echo "[Start Script]===================================="
echo "[DEBUG]"
pwd
echo "[DEBUG]"
cd ~
pwd
echo "[DEBUG]"
ls -al
echo "[DEBUG] Who Am I:"
whoami

APP_HOME=/home/ec2-user/lgcns_api_server
BUILD_DIR_PATH=$APP_HOE/build/libs
BUILD_OUTPUT_PATH=$BUILD_DIR_PATH/lgcns_api_server-0.0.1.jar

echo "App Home: $APP_HOME"
echo "Build Output: $BUILD_OUTPUT_PATH"

echo "[Start Application]"
echo "[DEBUG] $PATH"
echo "[DEBUG] $JAVA_HOME"
which java

nohup java -jar $BUILD_OUTPUT_PATH &
