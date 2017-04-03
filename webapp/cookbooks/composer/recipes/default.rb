#
# Cookbook Name:: composer
# Recipe:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

release_path = '/srv/www/release'

execute "curl -sS https://getcomposer.org/installer | php" do
    cwd release_path
end

execute "php composer.phar install" do
    cwd release_path
end
