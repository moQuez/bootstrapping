#!/bin/bash
git config --global user.name "Guillermo Velasquez"
git config --global user.email "guillermo.velasquez@gmail.com"
git config --global color.ui true
git config --global core.editor vim

echo "Configuring ssh"
ssh-keygen -t rsa -C "guillermo.velasquez@gmail.com"
pbcopy < ~/.ssh/id_rsa.pub

echo "Opening github so you can login and paste the ssh-key"
echo "Account Settings > SSH Keys > Add"
open http://www.github.com

echo "Once done just hit enter"
read

ssh -T git@github.com
