#!/bin/bash
echo "[Start Script]===================================="
BUILD_DIR=build/libs
BUILD_OUTPUT_NAME=lgcns_api_server-0.0.1.jar
APP_HOME=/home/ec2-user/lgcns_api_server

echo "App Home: $APP_HOME"
echo "Who Am I:"
whoami

echo "[Start Application]"
echo "[DEBUG] $PATH"
echo "[DEBUG] $JAVA_HOME"
which java
chmod +x $BUILD_DIR/$BUILD_OUTPUT_NAME
nohup java -jar $BUILD_DIR/$BUILD_OUTPUT_NAME &
