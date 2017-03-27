#!/bin/bash

curl https://s3.amazonaws.com/aws-cloudwatch/downloads/latest/awslogs-agent-setup.py -O

sudo chmod a+x awslogs-agent-setup.py

sudo ./awslogs-agent-setup.py -n -r us-east-1 -c s3://aws-codedeploy-us-east-1/cloudwatch/awslogs.conf

sudo service awslogs stop

wget https://s3.amazonaws.com/aws-codedeploy-us-east-1/cloudwatch/codedeploy_logs.conf

sudo cp codedeploy_logs.conf /var/awslogs/etc/config/codedeploy_logs.conf

sudo service awslogs start
