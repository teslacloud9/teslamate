#!/bin/sh
set -e
# Auto Script For Teslamate
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install -y docker-ce
sudo systemctl start docker
sudo systemctl enable docker
sudo docker --version
sudo curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
docker-compose --version
curl -L "https://raw.githubusercontent.com/teslacloud9/teslamate/master/basic/docker-compose.yml" -o docker-compose.yml
sudo docker-compose up -d
