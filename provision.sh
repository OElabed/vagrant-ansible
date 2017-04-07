#!/bin/sh

if [ ! -f /usr/bin/ansible-playbook ]
    then
    apt-get install software-properties-common
    apt-add-repository ppa:ansible/ansible
    apt-get update
    apt-get install -y ansible
fi

ansible-playbook --inventory="localhost," -c local  /vagrant/provisioning/playbook.yml