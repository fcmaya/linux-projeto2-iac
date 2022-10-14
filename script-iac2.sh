#!/bin/bash

echo "Atulizando o servidor..."

apt-get update
apt-get upgrade -y

echo "Instalando o servidor web Apache..."

apt-get install apache2 -y

echo "Instalando o descopactador unzip..."

apt-get install unzip -y

echo "Instalando a aplicação web no Apache..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/beads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html

