#!/bin/bash

sudo apt update

# Install docker
curl -sSL https://get.docker.com | sh
sudo usermod -aG docker ubuntu

# Install docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

