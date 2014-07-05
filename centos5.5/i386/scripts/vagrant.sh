#!/bin/sh

# Vagrant specific
date > /etc/vagrant_box_build_time

# UseDNS no
echo "UseDNS no" >> /etc/ssh/sshd_config

# Installing vagrant keys
mkdir -pm 700 /home/vagrant/.ssh
curl -L https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub -o /home/vagrant/.ssh/authorized_keys
chmod 0600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant. /home/vagrant/.ssh