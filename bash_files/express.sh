#!/usr/bin/env bash

echo 'Installing Dependencies'

echo 'Adding Multiverse sources.'
cat > /etc/apt/sources.list.d/multiverse.list << EOF
deb http://archive.ubuntu.com/ubuntu trusty multiverse
deb http://archive.ubuntu.com/ubuntu trusty-updates multiverse
deb http://security.ubuntu.com/ubuntu trusty-security multiverse
EOF

echo "Updating packages"
apt-get update

echo "Installing GIT"
apt-get install git -y > /dev/null