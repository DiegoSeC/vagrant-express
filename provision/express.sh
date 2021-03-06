#!/usr/bin/env bash

echo "Setting up LOCALE"

export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
locale-gen en_US.UTF-8
dpkg-reconfigure locales

# echo "Provisioning virtual machine..."
# sudo cat > /etc/apt/sources.list.d/multiverse.list << EOF
# deb http://archive.ubuntu.com/ubuntu trusty multiverse
# deb http://archive.ubuntu.com/ubuntu trusty-updates multiverse
# deb http://security.ubuntu.com/ubuntu trusty-security multiverse
# EOF
#
# echo "Updating packages"
# sudo apt-get update -y
#
# echo "Installing GIT"
# sudo apt-get install git -y
#
# echo "Installing Ngnix"
# sudo apt-get install nginx -y
#
# echo "Installing nodejs"
# sudo apt-get install nodejs -y
# sudo apt-get install npm -y
# sudo apt-get install nodejs-legacy -y
#
# echo "Installing express.js"
# sudo npm install -g express
# sudo npm install coffee-script -g
# sudo npm install mocha -g
# sudo npm install docco -g
#
# echo "Setting up Express.js"
# cd /vagrant
# git clone http://github.com/twilson63/express-coffee.git express
# cd express
# npm install
#
# VHOST=$(cat <<EOF
# # the IP(s) on which your node server is running. I chose port 3000.
# upstream wela.dev {
#     server 127.0.0.1:3000;
#     keepalive 8;
# }
#
# # the nginx server instance
# server {
#     listen 0.0.0.0:80;
#     server_name vagrant.dev vagrant;
#     access_log /vagrant/logs/access.log;
#
#     # pass the request to the node.js server with the correct headers
#     # and much more can be added, see nginx config options
#     location / {
#       proxy_http_version 1.1;
#       proxy_set_header Upgrade $http_upgrade;
#       proxy_set_header Connection "upgrade";
#       proxy_set_header X-Real-IP $remote_addr;
#       proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
#       proxy_set_header Host $http_host;
#       proxy_set_header X-NginX-Proxy true;
#
#       proxy_pass http://vagrant.dev/;
#       proxy_redirect off;
#     }
#  }
# EOF
# )
#
# echo "${VHOST}" > /etc/nginx/sites-available/vagrant
#
# cd /etc/nginx/sites-enabled/
# ln -s /etc/nginx/sites-available/vagrant vagrant
#
# /etc/init.d/nginx restart
#
# cd /vagrant/express
# node app.js
