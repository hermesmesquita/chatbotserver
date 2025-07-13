#!/bin/bash

#############################################################################################################
# Configuração proxy reverso para N8N 

sudo wget https://raw.githubusercontent.com/hermesmesquita/chatbotserver/refs/heads/main/n8n.usina.dev.br -O /etc/nginx/sites-available/n8n.usina.dev.br
sudo ln -s /etc/nginx/sites-available/n8n.usina.dev.br /etc/nginx/sites-enabled
sudo rm /etc/nginx/sites-enabled/default

#############################################################################################################
#############################################################################################################

curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
sudo usermod -aG docker $USER
sudo reboot
