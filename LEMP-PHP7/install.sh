#! /bin/bash

sudo echo "deb http://packages.dotdeb.org jessie all" > /etc/apt/sources.list.d/dotdeb.list
sudo wget -O- https://www.dotdeb.org/dotdeb.gpg | apt-key add -
sudo apt update -y

sudo systemctl stop php5-fpm
sudo apt-get autoremove --purge php5* -y

sudo apt-get install php7.0 php7.0-fpm php7.0-mysql php7.0-curl php7.0-json php7.0-gd php7.0-mcrypt php7.0-mbstring php7.0-xml -y
sudo apt-get install nginx mysql-server mysql-client -y

sudo apt-get purge apache2 -y
sudo rm /var/www/html/index.html
sudo rm -r /etc/apache2

sudo apt-get install git -y

sudo cp ./VirtualHost.conf /etc/nginx/sites-available/default
