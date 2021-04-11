#!/bin/sh

#curl -fSLs https://get.docker.com | sh
apt-get install docker-compose
apt-get install vim

mkdir volumes

cp .env.example .env

sudo chmod +x ./update.sh

# Personal preferences
#git config --global core.editor "vim"
#git config --global credential.helper store
