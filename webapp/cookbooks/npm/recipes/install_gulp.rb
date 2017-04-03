#
# Cookbook Name:: npm
# Recipe:: install_gulp
#
# Copyright (c) 2017 TJ Famodu, All Rights Reserved.

# Install Gulp

gulp_binary = "/usr/bin/gulp"
release_directory = "/srv/www/release"

directory '/srv/www/release' do
  owner 'apache'
  group 'apache'
  mode '0755'
  action :nothing
end

directory '/srv/www' do
  owner 'apache'
  group 'apache'
  mode '0755'
  notifies :create, 'directory[/srv/www/release]', :immediately
  not_if { ::Dir.exists?(release_directory) }
end

execute 'npm install --save-dev gulp' do
  cwd '/srv/www/release'
  action :nothing
end

execute "/usr/bin/npm install -g gulp-cli" do
  notifies :run, 'execute[npm install --save-dev gulp]', :immediately
  not_if { ::File.exists?(gulp_binary) }
end
