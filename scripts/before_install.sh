#!/bin/bash
cd /home/ec2-user/server
curl -sL https://rpm.nodesource.com/setup_14.x | sudo -E bash -
sudo yum install nodejs npm -y
sudo rm -rf /home/ec2-user/server/node_modules
