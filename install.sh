#!/bin/bash
mkdir install
cd install

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

nvm install 22

source ~/.bashrc

npx n8n
