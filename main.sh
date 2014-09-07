#!/bin/bash

# In order to run this script succesfully
# (1) Ansible and Git must be installed and 
# (2) elementary-os-kiosk-description repository must be cloned in /home/edu-admin/Github/

# Fixme: Add random sleep here? Or maybe I should be run 10 mins after every boot?

sleep 1s;
date > /tmp/date-check.txt
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games
rm -rf /home/edu-admin/Github/elementary-os-kiosk-description
cd /home/edu-admin/Github
git clone https://github.com/erkkimon/elementary-os-kiosk-description.git
ansible-playbook -i /home/edu-admin/Github/elementary-os-kiosk-description/hosts /home/edu-admin/Github/elementary-os-kiosk-description/edu-kiosk-description.yml
