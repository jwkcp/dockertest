#!/bin/bash

# Install docker
curl -sSL https://get.docker.com | sh
sudo usermod -aG docker ubuntu

# Install docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

if [ ! -d /srv/docker ];then
  sudo mkdir /srv/docker
fi
sudo curl -o /srv/docker/docker-compose.yml https://raw.githubusercontent.com/jwkcp/dockertest/master/docker-compose.yml

# Set systemd
sudo curl -o /etc/systemd/system/docker-compose-app.service https://raw.githubusercontent.com/jwkcp/dockertest/master/docker-compose-app.service
sudo systemctl enable docker-compose-app

# start up the application via docker-compose
docker-compose -f /srv/docker/docker-compose.yml up -d
