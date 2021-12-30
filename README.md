# @gotdibbs' Home Docker Setup

 - Pihole for local DNS cache and malware blocking
 - Cloudflared for DNS over HTTPS (Pihole depends on this)
 - Portainer for managing docker containers / images through a web UI
 - Homebridge for linking Kasa and Xbox up to Apple Homekit
 - Unifi Controller for home LAN, WiFi

## Installation

*Pre-reqs:* Raspberry Pi with a few gigs free (I use a 3B+ with a 16GB SD card and Raspbian Lite installed).

1. Install git via `sudo apt-get install git`
2. Clone this repository to a directory of your choice
3. Run `sudo sh ./init.sh` to setup the volumes directory, install preferred tools, and get your ENV file ready
4. Update `.env` to set the Pihole web UI password as well as specify where the `volumes` directory is located on the file system
5. Run `./update.sh` to update the Raspberry Pi itself, all installed packages, pull down the latest Docker images, and kick off `docker-compose up` all in one go (note: you can run this in a cron job to auto-update)

## Ports

As configured, the following web UIs run on the following ports:

 - Pihole: 80 / http
 - Portainer: 9000 / http
 - Homebridge: 4033 / http
 - Unifi Controller: 8443 / https

