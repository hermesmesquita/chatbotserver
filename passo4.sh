#!/bin/bash
sudo wget https://raw.githubusercontent.com/hermesmesquita/chatbotserver/refs/heads/main/n8n.service -O /etc/systemd/system/n8n.service

sudo systemctl daemon-reload

# sudo reboot
