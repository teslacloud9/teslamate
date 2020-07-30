#!/bin/sh
set -e
# Auto Script For Teslamate

curl -L "https://raw.githubusercontent.com/teslacloud9/teslamate/master/basic/docker-compose.yml" -o ~/docker-compose.yml
sudo docker-compose up -d
