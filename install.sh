#!/bin/bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
sudo apt-get -y install screen git
#sudo apt-get -y install git
sudo apt-get -y update
sudo apt-get -y upgrade
cp "$parent_path/.screenrc" ~/
git clone https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
git clone https://github.com/leebaird/discover ~/discover/
sudo cp -R ~/discover/ /opt/
sudo /opt/discover/update.sh
touch ~/discover.installed-at-opt-discover
