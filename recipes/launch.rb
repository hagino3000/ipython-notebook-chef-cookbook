# Create launch user
group 'ipynb' do
  group_name 'ipynb'
  action :create
end

user 'ipynb' do
  comment 'User for ipython notebook'
  gid 'ipynb'
  home '/home/ipynb'
  shell '/bin/bash'
  supports :manage_home => true
  action :create
end

# Add to staff group
group 'staff' do
  action :modify
  members ['ipynb']
  append true
end

# Create serve directory
directory '/web/' do
  owner 'ipynb'
  group 'staff'
  mode '0775'
  action :create
end

directory '/web/ipython-notebook/' do
  owner 'ipynb'
  group 'staff'
  mode '0775'
  action :create
end

# Deliver launch script
template '/web/ipython-notebook/launch.sh' do
  source "launch.sh.erb"
  owner 'ipynb'
  group 'staff'
  mode 00776
end

bash 'Launch ipython notebook' do
  user 'ipynb'
  group 'staff'
  cwd '/web/ipython-notebook/'
  code <<-EOC
    nohup ./launch.sh restart
  EOC
end
