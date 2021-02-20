#!/bin/sh

sudo apt-get install docker-ce docker-compose vim

mkdir volumes/

cp .env.example .env

sudo chmod +x ./update.sh
