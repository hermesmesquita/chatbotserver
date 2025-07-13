#!/bin/bash
docker volume create n8n_data 
docker run -it --name n8n -p 5678:5678 -v n8n_data:/home/node/.n8n -restart unless-stopped docker.n8n.io/n8nio/n8n

sudo wget https://raw.githubusercontent.com/hermesmesquita/chatbotserver/refs/heads/main/n8n.service -O /etc/systemd/system/n8n.service

sudo systemctl daemon-reload

sudo reboot
