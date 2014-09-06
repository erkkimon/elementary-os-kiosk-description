#!/bin/bash

if [ "$(id -u)" = "0" ]; then
    echo "Please do not run this as root."
    exit 1
fi

sudo apt-add-repository ppa:ansible/ansible &&
sudo apt-get update &&
sudo apt-get -y install git ansible &&
mkdir /home/edu-admin/Github &&
cd /home/edu-admin/Github &&
git clone https://github.com/erkkimon/elementary-os-kiosk-description.git &&
sudo bash /home/edu-admin/Github/elementary-os-kiosk-description/main.sh
