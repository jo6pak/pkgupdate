#! /bin/bash
apt-get update
apt-get -y dist-upgrade
apt-get -y autoremove
apt-get -y autoclean
apt-get purge -y $(dpkg -l | awk '/^rc/ { print $2 }')
