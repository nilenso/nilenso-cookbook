group node[:nilenso][:group]

user node[:nilenso][:user] do
  group node[:nilenso][:group]
  system true
  shell "/bin/bash"
end
