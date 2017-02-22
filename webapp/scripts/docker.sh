#!/bin/bash

rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm
rpm -Uvh https://mirror.webtatic.com/yum/el6/latest.rpm
yum install -y yum-utils
yum clean all
yum install -y httpd vim-enhanced bash-completion unzip wget tar bzip2 git
service httpd on && chkconfig on
yum install -y mysql mysql-server
yum clean all
service mysqld on && chkconfig mysqld on
yum install -y php56w php56w-cli php56w-common php56w-mbstring, php56w-mysql, php56w-xml, php56w-gd
wget https://phar.phpunit.de/phpunit-5.7.phar
rpm -Uvh https://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
yum install cloud-init
yum install -y nodejs npm
npm config set registry http://registry.npmjs.org/
npm cache clear -f
npm install bower -g
npm install gulp -g
npm install -g ember-cli
npm install -g phantomj
