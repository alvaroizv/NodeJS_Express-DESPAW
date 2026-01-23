#!/bin/bash

set -xeu

apt-get update

apt-get -y upgrade

# Actualizar la versión 20 de node.js
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -

apt-get -y install nodejs 

mkdir -p proyecto_cluster
cd proyecto_cluster

npm init -y

npm install express

npm install -g loadtest

npm install -g pm2

cp /vagrant/app_sinCluster.js .

cp /vagrant/app_conCluster.js .