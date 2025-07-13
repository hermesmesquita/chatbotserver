#!/bin/bash
sudo apt-get update

# curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

sudo apt-get install nginx snapd gnupg git -y

sudo snap install snapd
sudo snap install --classic certbot
sudo ln -s /snap/bin/certbot /usr/bin/certbot

echo "*************************************************************"
echo ""
echo "\nRode o comando 'sudo certbot --nginx' e instale certificado"
echo ""
echo "*************************************************************
