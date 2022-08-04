#!/bin/bash
echo "[Set Env]================================"
echo $ENV_CONTENTS > temp_application.yaml
cat temp_application.yaml
base64 --decode temp_application.yaml > application.yaml
cat application.yaml
