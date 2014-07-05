#!/bin/sh

# vagrantユーザーでsshログインしていてもsudoできるようにする
sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers

# ipv6 disable
sed -i -e s/NETWORKING_IPV6=yes/NETWORKING_IPV6=no/ /etc/sysconfig/network

# yum  install
yum -y install gcc bzip2 make kernel-devel-`uname -r`
yum -y install gcc-c++ zlib-devel openssl-devel readline-devel sqlite3-devel
yum -y erase wireless-tools gtk2 libX11 hicolor-icon-theme avahi freetype bitstream-vera-fonts
