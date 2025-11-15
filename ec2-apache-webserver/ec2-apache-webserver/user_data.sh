#!/bin/bash

yum update -y

yum install -y httpd

systemctl start httpd

systemctl enable httpd

echo "<html><h1>Hello from Harold's EC2 Apache Web Server!</h1></html>" > /var/www/html/index.html
 
