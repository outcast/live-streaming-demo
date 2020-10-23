#!/usr/bin/env bash

#Deploy Origin Server
pushd ./terraform
terraform init
make plan
make apply
popd
echo Sleeping so servers can boot....
sleep 20
ansible-playbook -e "ansible_user=root" -i ./configs/ansible/nodes.conf ./playbooks/*-node.playbook
[ -f ./bbb_sunflower_1080p_60fps_normal.mp4 ] || (echo "Getting Video" && wget http://distribution.bbb3d.renderfarming.net/video/mp4/bbb_sunflower_1080p_60fps_normal.mp4)
