#!/bin/bash
docker volume create n8n_data 
docker volume create waha_sessions
docker volume create waha_media
docker run --name n8n   -dp 5678:5678 -v n8n_data:/home/node/.n8n --restart unless-stopped docker.n8n.io/n8nio/n8n
docker run --name waha  -dp 3000:3000 -v waha_sessions:/app/.sessions -v waha_media:/app/.media --env-file .env --restart unless-stopped devlikeapro/waha

sudo wget https://raw.githubusercontent.com/hermesmesquita/chatbotserver/refs/heads/main/env_sample -O .env

sudo wget https://raw.githubusercontent.com/hermesmesquita/chatbotserver/refs/heads/main/n8n.service -O /etc/systemd/system/n8n.service

sudo systemctl daemon-reload

# sudo reboot
