#!/bin/bash
cd /home/ec2-user/server

sudo rm .env
sudo rm -rf node_modules/

sudo touch .env
sudo chmod 777 .env
echo "SKIP_PREFLIGHT_CHECK=true" > .env

curl -sL https://rpm.nodesource.com/setup_14.x | sudo -E bash -
sudo yum install nodejs npm -y

curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | sudo tee /etc/yum.repos.d/yarn.repo
sudo rpm --import https://dl.yarnpkg.com/rpm/pubkey.gpg

sudo yum install yarn -y