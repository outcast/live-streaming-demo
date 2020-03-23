#!/usr/bin/env bash

#Deploy Origin Server
pushd ./terraform
make plan
make apply
popd
#ansible-playbook -e "ansible_user=root" -i ./configs/ansible/nodes.conf ./playbooks/ingress-node.playbook
#ansible-playbook -e "ansible_user=root" -i ./configs/ansible/nodes.conf ./playbooks/worker-node.playbook
#ansible-playbook -e "ansible_user=root" -i ./configs/ansible/nodes.conf ./playbooks/lb-node.playbook
ansible-playbook -e "ansible_user=root" -i ./configs/ansible/nodes.conf ./playbooks/*-node.playbook
