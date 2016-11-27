#
# Author:: PastaMasta (<pasta.masta2902@gmail.com>)
# Cookbook Name:: chef-base
# Recipe:: misc
#
# Copyright 2016, PastaMasta
#

# Make sure NTP is running
case node['platform']
when "centos"
  case node['platform_verion'].to_i
  when 6
    service 'ntpd' do
      action ['enable','start']
    end
  end
end

# Clone down my dotfies
git '/root/backpack' do
  action :sync
  repository "https://github.com/PastaMasta/backpack.git"
  notifies :run, 'execute[Setup backpack]', :immediately
end

execute 'Setup backpack' do
  action :nothing
  command '/root/backpack/setup.sh'
end
