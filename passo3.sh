#!/bin/bash
docker volume create n8n_data 
docker volume create sessions
docker volume create media
docker run --name n8n   -dp 5678:5678 -v n8n_data:/home/node/.n8n                     --restart unless-stopped docker.n8n.io/n8nio/n8n
docker run --name waha  -dp 3000:3000 -v sessions:/app/.sessions -v media:/app/.media --restart unless-stopped devlikeapro/waha

sudo wget https://raw.githubusercontent.com/hermesmesquita/chatbotserver/refs/heads/main/n8n.service -O /etc/systemd/system/n8n.service

sudo systemctl daemon-reload

# sudo reboot
