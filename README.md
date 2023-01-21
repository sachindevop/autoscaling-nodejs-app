# autoscaling-nodejs-app
1. Create the Security group with following inbound rules:
    1) SSH(port 22) form anywhere
    2) HTTP(port 80) from anywhere
    3) HTTPS(port 443) from anywhere
    4) Custom port(port 3000) from anywhere
2. Create a Launch template: 
    1) Amazon Linux OS
    2) key pair of your choice
    3) In advance details put the user data from the repository file user-data-for-template.sh.
3. Create a AutoScaling group and mention the launch template that was created. Along with this also create Application load balance and target group while creating the ASG.
4. once all this is done, use the DNS of the Load balancer and verify your architecture by -> DNS:PORTNumber
5. Change the Listening port of the load blancer to 80 from 3000 so that you can access your website just by Loadblancer DNS.
6. This exercise can be further taken by using route 53 and cloudfront to access your website faster and from your own domain.
