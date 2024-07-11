#!/usr/bin/env bash
echo "Installing Apache and setting and to up..."

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y apache2

if [ ! -d /var/www/html ]; then
sudo mkdir -p /var/www/html
fi

sudo cp /vagrant/html/* /var/www/html/
sudo systemctl start apache2
sudo systemctl enable apache2