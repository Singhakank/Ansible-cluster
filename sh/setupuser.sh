#!/bin/bash
sudo useradd ansible -m -s /bin/bash
sudo echo "ansible ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/ansible
sudo -u ansible mkdir /home/ansible/.ssh
sudo -u ansible cp /tmp/id_rsa.pub  /home/ansible/.ssh/authorized_keys