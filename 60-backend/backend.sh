#!/bin/bash

dnf install ansible -y
# push
# ansible-playbook -i inventory mysql.yaml

#pull
ansible-pull  -i localhost, -U https://github.com/ParijathaT/expense-ansible-roles-tf1.git main.yaml -e COMPONENT=backend -e ENVIRONMENT=$1