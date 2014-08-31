#!/bin/sh

# In order to run this script succesfully
# (1) Ansible and Git must be installed and 
# (2) elementary-os-kiosk-description repository must be cloned in /home/edu-admin/Github/

# Fixme: Add random sleep here? Or maybe I should be run 10 mins after every boot?

ansible-playbook -i hosts edu-kiosk-description.yml
