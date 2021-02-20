#!/bin/sh
sudo apt update
sudo apt -yf dist-upgrade
sudo apt-get -y --purge autoremove
sudo apt-get autoclean

sudo docker pull portainer/portainer-ce:latest
sudo docker pull pihole/pihole:latest
sudo docker pull oznu/homebridge:latest
sudo docker pull ghcr.io/linuxserver/unifi-controller:latest
sudo docker image prune

docker-compose down
docker-compose up -d
