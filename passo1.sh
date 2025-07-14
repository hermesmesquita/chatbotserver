#!/bin/bash
sudo apt-get update

# curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

sudo apt-get install nginx snapd gnupg git -y

sudo snap install snapd
sudo snap install --classic certbot
sudo ln -s /snap/bin/certbot /usr/bin/certbot

echo "*************************************************************"
echo "CERTBOT INSTALADO. EXECUTE NO TERMINAL O SEGUINTE COMANDO"
echo ""
echo "  sudo certbot --nginx -d usina.dev.br -d n8n.usina.dev.br -d waha.usina.dev.br"
echo ""
echo "*************************************************************"
