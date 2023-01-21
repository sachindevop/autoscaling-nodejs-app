[Unit]
Description=appjs
After=multi-user.target

[Service]
ExecStart=/usr/bin/node /home/ec2-user/autoscaling-nodejs-app/app.js
Restart=always
RestartSec=10
StandardOutput=syslog
StandardError=syslog
SyslogIdentifier=appjs
User=ec2-user

[Install]
WantedBy=multi-user.target
