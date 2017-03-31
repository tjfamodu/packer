#
# Cookbook Name:: npm
# Recipe:: install_gulp
#
# Copyright (c) 2017 TJ Famodu, All Rights Reserved.

# installs gulp
gulp_binary = "/usr/bin/gulp"

execute "/usr/bin/npm install -g gulp" do
    not_if { ::File.exists?(gulp_binary) }
end
