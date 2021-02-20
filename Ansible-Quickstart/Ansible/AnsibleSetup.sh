#!/bin/bash
#update VM
sudo apt-get update
sudo apt-get upgrade -y
#install python3-pip
sudo apt-get install python3-pip -y
#install ansible
sudo pip3 install 'ansible[azure]'
#install ansible azure modules and plugins
ansible-galaxy collection install azure.azcollection
wget https://raw.githubusercontent.com/ansible-collections/azure/dev/requirements-azure.txt
sudo pip3 install -r requirements-azure.txt
#install python-pip
sudo apt install python-pip
#install preview modules
sudo pip install -r ~/.ansible/roles/azure.azure_preview_modules/files/requirements-azure.txt