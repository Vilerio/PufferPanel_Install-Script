#!/bin/sh
echo "The installation of PufferPanel is starting !"
apt upgrade
apt update
apt-get install curl tar
curl -sSL https://get.docker.com/ | CHANNEL=stable bash
curl -s https://packagecloud.io/install/repositories/pufferpanel/pufferpanel/script.deb.sh | sudo bash
apt-get install pufferpanel
sudo groupadd --force --system docker
sudo usermod -a -G docker pufferpanel
systemctl enable docker
systemctl enable pufferpanel
pufferpanel user add
echo "The installation of PufferPanel is finish !"