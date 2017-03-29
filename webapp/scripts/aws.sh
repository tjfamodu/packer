#!/bin/bash

sudo rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm
sudo rpm -Uvh https://mirror.webtatic.com/yum/el6/latest.rpm
sudo yum install -y yum-utils
sudo yum clean all
sudo yum groupinstall 'Development Tools'
sudo yum install -y httpd vim-enhanced bash-completion unzip wget tar bzip2 git
sudo service httpd start 
sudo yum install -y mysql mysql-server
sudo yum clean all
sudo service mysqld start && sudo chkconfig mysqld on
sudo yum install -y php56w php56w-cli php56w-common php56w-mbstring, php56w-mysql, php56w-xml, php56w-gd
wget https://phar.phpunit.de/phpunit-5.7.phar
sudo service httpd restart
sudo chkconfig httpd on
