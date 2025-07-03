#!/bin/bash
sudo apt-get update && sudo apt-get upgrade -y

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

source ~/.bashrc

nvm install 24

source ~/.bashrc

npx n8n
