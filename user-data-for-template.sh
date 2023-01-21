#!/bin/bash
sudo yum update -y
sudo curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | bash
. ~/.nvm/nvm.sh
nvm install v8.9.3
sudo yum install git -y
git clone https://github.com/sachindevop/autoscaling-nodejs-app.git
cd autoscaling-nodejs-app
npm install
sudo cp ./srever.sh /etc/systemd/system/appjs.service
sudo systemctl enable appjs.service
sudo systemctl start appjs.service
