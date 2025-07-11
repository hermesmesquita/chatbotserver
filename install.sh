#!/bin/bash
sudo apt-get update

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

sudo apt-get install nginx snapd gnupg git -y

#############################################################################################################
# Configuração proxy reverso para N8N 

sudo wget https://raw.githubusercontent.com/hermesmesquita/chatbotserver/refs/heads/main/n8n.usina.dev.br -O /etc/nginx/sites-available/n8n.usina.dev.br
sudo ln -s /etc/nginx/sites-available/n8n.usina.dev.br /etc/nginx/sites-enabled

#############################################################################################################
#############################################################################################################

curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
sudo usermod -aG docker $USER

source ~/.bashrc

sudo docker volume create n8n_data
sudo docker run -it --rm --name n8n -p 5678:5678 -v n8n_data:/home/node/.n8n docker.n8n.io/n8nio/n8n


sudo snap install snapd
sudo snap install --classic certbot
sudo ln -s /snap/bin/certbot /usr/bin/certbot

# curl -fsSL https://www.mongodb.org/static/pgp/server-8.0.asc | \
#    sudo gpg -o /usr/share/keyrings/mongodb-server-8.0.gpg \
#    --dearmor
# echo "deb [ signed-by=/usr/share/keyrings/mongodb-server-8.0.gpg ] http://repo.mongodb.org/apt/debian bookworm/mongodb-org/8.0 main" | sudo tee /etc/apt/sources.list.d/mongodb-org-8.0.list

# sudo apt-get update

# sudo apt-get install -y mongodb-org
# sudo systemctl start mongod

docker ps 
