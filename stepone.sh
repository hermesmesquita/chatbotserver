#!/bin/bash
sudo apt-get update
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
sudo usermod -aG docker $USER

mkdir -p proxy-traefik
cd proxy-traefik
touch acme.json
chmod 600 acme.json


sudo reboot
