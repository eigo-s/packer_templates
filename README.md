packer_templates
======

packerのテンプレートをあげるところ


# 事前に必要なもの
------
## VirtualBox
https://www.virtualbox.org/wiki/Downloads
ここら辺からおとしていれる。
ただし、vagrant的に4.3系だとあまりうまくいかない模様。

## vagrant
http://www.vagrantup.com/downloads.html
ここら辺みて最新のをいれておくといいんじゃないかな。
## packer
http://www.packer.io/downloads.html
ここら辺みて0.5.*以上をいれる。

------

# 使い方
```
git clone git@github.com:eigo-s/packer_templates.git
cd ${distribution}/'i368|x86_64'
packer build -only=virtualbox-iso packer.json
cd vagrant-box
vagrant box add ${project} vagrant-box/${distribution}-virtualbox.box
vagrant init ${project}
vagrant ssh

