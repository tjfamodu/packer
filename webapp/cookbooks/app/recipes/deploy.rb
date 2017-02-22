directory '/srv/www/echo/.ssh' do
  owner 'ec2-user'
  recursive true
end

cookbook_file '/srv/www/echo/wrap-ssh4git.sh' do
  source 'wrap-ssh4git.sh'
  owner 'ec2-user'
  mode '0755'
end

deploy_revision '/srv/www/echo' do
  repo 'git@github.com:eyemaginations/rendia-webapp.git'
  user 'ec2-user'
  migrate false
  purge_before_symlink %w{one two folder/three}
#  before_restart do
    # some Ruby code
#  end
#  notifies :restart, 'service[foo]'
#  notifies :restart, 'service[bar]'
end
