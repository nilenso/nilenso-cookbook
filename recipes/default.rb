group node[:nilenso][:group]

user node[:nilenso][:user] do
  group node[:nilenso][:group]
  system true
  shell "/bin/bash"
end

include_recipe 'apt'
include_recipe 'nginx'

nginx_site 'default' do
  enable false
end

directory "/var/www/nilenso" do
  action :create
  recursive true
end

template "#{node[:nginx][:dir]}/sites-available/nilenso" do
  source "nilenso.erb"
  mode 0777
  owner node[:nilenso][:user]
  group node[:nilenso][:group]
end

nginx_site "nilenso" do
  enable true
end

cookbook_file "/var/www/nilenso/index.html" do
  source "index.html"
  mode 0755
  owner node[:nilenso][:user]
end
