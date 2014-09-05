#!/bin/bash
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get -y install git ansible
mkdir /home/edu-admin/Github
cd /home/edu-admin/Github
https://github.com/erkkimon/elementary-os-kiosk-description.git
sudo sh /home/edu-admin/Github/elementary-os-kiosk-description/main.sh
