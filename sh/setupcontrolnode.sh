#!/bin/bash
sudo useradd ansible -m -s /bin/bash
sudo echo "ansible ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/ansible
sudo -u ansible mkdir /home/ansible/.ssh
sudo -u ansible cp /tmp/id_rsa.pub  /home/ansible/.ssh/
sudo -u ansible cp /tmp/id_rsa  /home/ansible/.ssh/
sudo -u ansible chmod -R 600 /home/ansible/.ssh/id_rsa*

sudo apt update -y
sudo apt install -y software-properties-common
sudo apt install -y ansible