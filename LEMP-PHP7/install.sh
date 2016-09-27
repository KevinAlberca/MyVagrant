#! /bin/bash

sudo echo "deb http://packages.dotdeb.org jessie all" > /etc/apt/sources.list.d/dotdeb.list
sudo wget -O- https://www.dotdeb.org/dotdeb.gpg | apt-key add -
sudo apt update -y

sudo systemctl stop php5-fpm
sudo apt-get autoremove --purge php5* -y

sudo apt-get install php7.0 php7.0-fpm php7.0-mysql php7.0-curl php7.0-json php7.0-gd php7.0-mcrypt php7.0-mbstring php7.0-xml -y
sudo apt-get install nginx mysql-server mysql-client -y

sudo service apache2 stop

sudo cd /var/www/html
sudo apt-get install unzip -y
sudo wget https://files.phpmyadmin.net/phpMyAdmin/4.6.3/phpMyAdmin-4.6.3-all-languages.zip && sudo unzip phpMyAdmin-4.6.3-all-languages.zip
sudo mv phpMyAdmin-4.6.3-all-languages phpMyAdmin
sudo mv phpMyAdmin /var/www/html/


sudo apt-get install git -y

sudo cp ./VirtualHost.conf /etc/nginx/sites-available/default
