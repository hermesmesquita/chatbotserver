#!/bin/bash
sudo apt-get update

sudo apt-get install nginx snapd gnupg git -y

sudo snap install snapd
sudo snap install --classic certbot
sudo ln -s /snap/bin/certbot /usr/bin/certbot

echo "*************************************************************"
echo "CERTBOT INSTALADO. EXECUTE NO TERMINAL O SEGUINTE COMANDO"
echo ""
echo "  sudo certbot --nginx -d hermes.dev.br -d n8n.hermes.dev.br -d waha.hermes.dev.br "
echo ""
echo "*************************************************************"
