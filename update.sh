#!/bin/sh

# Log each command as its run
set -x

# Update all system dependencies
sudo apt update
sudo apt -yf dist-upgrade
sudo apt-get -y --purge autoremove
sudo apt-get autoclean

# Update key py packages
pip3 install --upgrade setuptools_rust docker-compose

# Pull latest images for our containers
docker-compose pull

# stop all containers under default profile
docker-compose down

# Restart all containers so they use the latest images
docker-compose up -d

# Cleanup old images
sudo docker image prune -a -f

# Run backup script, has to run after containers are restarted
docker-compose run backup

# Stop logging commands as they're run
set +x
