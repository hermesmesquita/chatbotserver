#!/bin/bash
sudo apt-get update

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

sudo apt-get install nginx snapd gnupg git -y

# Configuração proxy reverso para N8N 
sudo echo "server {
         listen 80;
         server_name n8n.usina.dev.br;

         location / {
             proxy_pass http://127.0.0.1:5678;  # Replace with your backend server's address
             proxy_http_version 1.1;
             proxy_set_header Upgrade $http_upgrade;
             proxy_set_header Connection "Upgrade";
             proxy_set_header Host $host;
             proxy_set_header X-Real-IP $remote_addr;
             proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
             proxy_set_header X-Forwarded-Proto $scheme;
         }
     }

     server {
         listen 443 ssl;
         server_name n8n.usina.dev.br;

         ssl_certificate /etc/letsencrypt/live/n8n.usina.dev.br/cert.pem;
         ssl_certificate_key /etc/letsencrypt/live/n8n.usina.dev.br/privkey.pem;

         location / {
             proxy_pass http://127.0.0.1:5678;
             proxy_http_version 1.1;
             proxy_set_header Upgrade $http_upgrade;
             proxy_set_header Connection "Upgrade";
             proxy_set_header Host $host;
             proxy_set_header X-Real-IP $remote_addr;
             proxy_set_header X-Forwarded-For proxy_add_x_forwarded_for;
             proxy_set_header X-Forwarded-Proto $scheme;
         }
     }" > /etc/nginx/sites-available/n8n.usina.dev.br

ln -s /etc/nginx/sites-available/n8n.usina.dev.br /etc/nginx/sites-enabled







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

# curl -fsSL https://get.docker.com -o get-docker.sh
# sh get-docker.sh
# sudo usermod -aG docker $USER

echo "Saia do terminal e entre novamente."
