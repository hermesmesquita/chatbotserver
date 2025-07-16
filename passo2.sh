#!/bin/bash

#############################################################################################################
# Configuração proxy reverso para N8N 

sudo wget https://raw.githubusercontent.com/hermesmesquita/chatbotserver/refs/heads/main/n8n.hermes.dev.br -O /etc/nginx/sites-available/n8n.hermes.dev.br
sudo ln -s /etc/nginx/sites-available/n8n.hermes.dev.br /etc/nginx/sites-enabled

sudo wget https://raw.githubusercontent.com/hermesmesquita/chatbotserver/refs/heads/main/waha.hermes.dev.br -O /etc/nginx/sites-available/waha.hermes.dev.br
sudo ln -s /etc/nginx/sites-available/waha.hermes.dev.br /etc/nginx/sites-enabled

sudo wget https://raw.githubusercontent.com/hermesmesquita/chatbotserver/refs/heads/main/hermes.dev.br -O /etc/nginx/sites-available/hermes.dev.br
sudo ln -s /etc/nginx/sites-available/hermes.dev.br /etc/nginx/sites-enabled

sudo rm /etc/nginx/sites-enabled/default

#############################################################################################################
#############################################################################################################

curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
sudo usermod -aG docker $USER
sudo reboot
