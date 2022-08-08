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
BUILD_DIR_PATH=$APP_HOME/build/libs
BUILD_OUTPUT_PATH=$BUILD_DIR_PATH/lgcns_api_server-0.0.1.jar

echo "App Home: $APP_HOME"
echo "Build Output: $BUILD_OUTPUT_PATH"

echo "[Start Application]"
echo "[DEBUG] $PATH"
echo "[DEBUG] $JAVA_HOME"
echo "[DEBUG]"
which java
echo "[DEBUG] profile 잘 있나"
ls -al /etc/profile.d
echo "[DEBUG] java 찾자"
ls -al /opt
echo "[DEBUG] profile 적용해보자"
cd ~
source /etc/profile
echo "[DEBUG] profile 적용됐나?"
echo "[DEBUG] $PATH"
echo "[DEBUG] $JAVA_HOME"

echo "real start"
cd $APP_HOME
nohup java -jar $BUILD_OUTPUT_PATH > $APP_HOME/nohup.log &
cat nohup.log
cat logs/lgcns_api_server.log