#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y curl git apt-transport-https ca-certificates software-properties-common

# Install and configure docker components
sudo apt-get remove docker docker-engine docker.io
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y docker-ce
sudo groupadd docker
sudo usermod -aG docker ubuntu
sudo systemctl enable docker
sudo systemctl disable docker

# Install and configure docker-compose
sudo curl -L https://github.com/docker/compose/releases/download/1.16.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose