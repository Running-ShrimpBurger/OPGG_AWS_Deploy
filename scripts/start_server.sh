#!/bin/bash
cd /home/ec2-user/server/src
sudo npm start
sudo pm2 start npm --name "opgg" -- start
sudo pm2 startup
sudo pm2 save
sudo pm2 restart all