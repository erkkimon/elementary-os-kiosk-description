#!/bin/bash

# In order to run this script succesfully
# (1) Ansible and Git must be installed and 
# (2) elementary-os-kiosk-description repository must be cloned in /home/edu-admin/Github/

# Make sure that Ansible has the correct value in $PATH variable
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games &&

# Update the kiosk description and other relevant files
#rm -rf /home/edu-admin/Github/elementary-os-kiosk-description
#cd /home/edu-admin/Github
#git clone https://github.com/erkkimon/elementary-os-kiosk-description.git
cd /home/edu-admin/Github/elementary-os-kiosk-description
git pull

# Modify the kiosk according to the description using Ansible
ansible-playbook -i /home/edu-admin/Github/elementary-os-kiosk-description/hosts /home/edu-admin/Github/elementary-os-kiosk-description/local.yml
