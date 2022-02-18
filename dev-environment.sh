#!/bin/zsh

# install Volta
curl https://get.volta.sh | bash

# install Node & yarn
volta install node
volta install yarn

# setting up TS
echo "Installing Typescript"
npm install -g typescript
