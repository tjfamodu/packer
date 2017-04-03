#
# Cookbook:: nodejs
# Recipe:: install
#
# Copyright:: 2017, The Authors, All Rights Reserved.


execute 'install nodejs' do
  command 'sudo yum install -y nodejs npm --enablerepo=epel'
end

execute "npm cache clean" do
    action :run
end

execute "npm install -g n" do
    action :run
end

execute "n 4.2.1" do
    action :run
end

execute "npm config set unsafe-perm true" do
    action :run
end

execute "npm install es6-promise" do
  action :run
end
