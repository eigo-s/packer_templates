#!/bin/sh

# vagrantユーザーでsshログインしていてもsudoできるようにする
sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers
