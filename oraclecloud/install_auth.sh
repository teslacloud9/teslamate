#!/bin/sh
set -e
# Auto Script For Teslamate
#curl -L "https://raw.githubusercontent.com/teslacloud9/teslamate/master/centos/docker-ce.repo" -o docker-ce.repo
#sudo yum-config-manager --add-repo ./docker-ce.repo
sudo yum-config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo
sudo yum -y install slirp4netns fuse-overlayfs container-selinux

sudo yum install -y docker-ce
sudo systemctl start docker
sudo systemctl enable docker
sudo docker --version
sudo curl -L "https://github.com/docker/compose/releases/download/v2.11.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo rm /usr/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
docker-compose --version
curl -L "https://raw.githubusercontent.com/teslacloud9/teslamate/master/auth/docker-compose.yml" -o docker-compose.yml
curl -L "https://raw.githubusercontent.com/teslacloud9/teslamate/master/auth/.env" -o .env
sudo docker-compose pull
