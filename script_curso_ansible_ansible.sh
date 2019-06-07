#!/bin/bash
sudo apt-get update && \
sudo apt-get install -y software-properties-common && \
sudo apt-add-repository --yes --update ppa:ansible/ansible && \
sudo apt-get install -y ansible && \
sudo cp /vagrant/ssh-keys/ansible_key /home/vagrant/ && \
sudo chown vagrant:vagrant /home/vagrant/ansible_key && \
sudo chmod 600 /home/vagrant/ansible_key && \
ansible-playbook -i /vagrant/configs/hosts /vagrant/configs/provisioning.yml