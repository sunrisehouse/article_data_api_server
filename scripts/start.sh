#!/bin/bash
echo "[App Start]======================"
nohup java -jar build/libs/lgcns_api_server*.jar > .log &
