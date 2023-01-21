#!/bin/bash
sudo yum update -y
sudo yum install -y gcc-c++ make
curl -sL https://rpm.nodesource.com/setup_16.x | sudo -E bash -
sudo yum install -y nodejs
sudo yum install -y git
sudo git clone https://github.com/sachindevop/autoscaling-nodejs-app.git
cd /autoscaling-nodejs-app
sudo cp ./server.sh /etc/systemd/system/appjs.service
sudo systemctl enable appjs.service
sudo systemctl start appjs.service
sudo npm install
