#!/usr/bin/bash
set -ev

dnf install ansible
echo "localhost ansible_connection=local user=$USER" > inventory
ansible-playbook -i inventory site.yml
