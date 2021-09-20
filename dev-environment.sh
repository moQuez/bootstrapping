#!/bin/zsh

set -e

# Install node version manager
rm -rf ~/.nvm ~/.npm
export NVM_DIR="$HOME/.nvm" && (
  git clone https://github.com/nvm-sh/nvm.git "$NVM_DIR"
  cd "$NVM_DIR"
  git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1)`
)
source "$NVM_DIR/nvm.sh"
nvm install --lts --latest-npm --default
nvm use --lts

echo "Checking for installed node version"
node --version

 echo "Installing Yarn v.1.x"
 npm install -g yarn

# Setting up TS
echo "Installing Typescript"
npm install -g typescript typescript-language-server

# Additional language servers
npm install -g vim-language-server
