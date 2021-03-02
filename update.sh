#!/bin/sh
sudo apt update
sudo apt -yf dist-upgrade
sudo apt-get -y --purge autoremove
sudo apt-get autoclean

docker-compose pull

docker-compose down
docker-compose up -d

sudo docker image prune -a -f
