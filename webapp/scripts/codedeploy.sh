#!/bin/bash
wget https://s3.amazonaws.com/aws-cloudwatch/downloads/latest/awslogs-agent-setup.py
wget https://s3.amazonaws.com/aws-codedeploy-us-east-1/cloudwatch/codedeploy_logs.conf
sudo chmod +x ./awslogs-agent-setup.py
sudo python awslogs-agent-setup.py -n -r us-east-1 -c s3://aws-codedeploy-us-east-1/cloudwatch/awslogs.conf
sudo mkdir -p /var/awslogs/etc/config
sudo cp codedeploy_logs.conf /var/awslogs/etc/config/
sudo service awslogs restart
