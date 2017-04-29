#!/bin/bash
sudo apt-get update
sudo apt-get dist-upgrade
sudo aot-get upgrade
cp .screenrc ~/
git clone https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
git clone https://github.com/leebaird/discover /opt/discover/
cd /opt/discover/
./update.sh
cd
touch ~/discover.installed-at-opt-discover

