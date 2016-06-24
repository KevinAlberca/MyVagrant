#! /bin/bash

echo "deb http://packages.dotdeb.org jessie all" > /etc/apt/sources.list.d/dotdeb.list
wget -O- https://www.dotdeb.org/dotdeb.gpg | apt-key add -
apt update -y

systemctl stop php5-fpm
apt-get autoremove --purge php5* -y

apt-get install php7.0 php7.0-fpm php7.0-mysql php7.0-curl php7.0-json php7.0-gd php7.0-mcrypt -y
apt-get install nginx mysql-server mysql-client
