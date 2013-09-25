group node[:nilenso][:group]

user node[:nilenso][:user] do
  group node[:nilenso][:group]
  system true
  shell "/bin/bash"
end

include_recipe "apt"
include_recipe "nilenso-cookbook::webserver"
include_recipe "rbenv::default"
include_recipe "rbenv::ruby_build"
