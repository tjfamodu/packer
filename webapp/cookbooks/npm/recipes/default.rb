#
# Cookbook:: dependencies
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

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
