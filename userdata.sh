#!/bin/bash

# Define hostname
HN=frontend.amaldeep.tech

yum update -y
hostnamectl set-hostname $HN
yum install httpd -y 
amazon-linux-extras install php7.4  -y 
systemctl enable httpd.service
systemctl restart httpd.service
chown -R apache.apache /var/www/html/

