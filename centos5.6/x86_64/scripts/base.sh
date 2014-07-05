#!/bin/sh

# vagrantユーザーでsshログインしていてもsudoできるようにする
sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers

# ipv6 disable
sed -i -e s/NETWORKING_IPV6=yes/NETWORKING_IPV6=no/ /etc/sysconfig/network

# yum group install
yum -y groupinstall admin-tools base development-libs development-tools