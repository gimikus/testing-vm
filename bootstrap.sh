#!/usr/bin/env bash

apt-get update
apt-get install -y apache2
if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant/www /var/www
fi

apt-get install -y php5 libapache2-mod-php5
a2enmod php5

apt-get install -y php5-gd
apt-get install -y php5-imagick

apt-get install -y curl