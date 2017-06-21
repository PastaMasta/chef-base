#
# Author:: PastaMasta (<pasta.masta2902@gmail.com>)
# Cookbook Name:: chef-base
# Recipe:: misc
#
# Copyright 2017, PastaMasta
#

# Make sure we have some clocksync
case "#{node['platform']} #{node['platform_version']}"
when /centos 6/
  package 'ntpd'
  service 'ntpd' do
    action ['enable','start']
  end
when /centos 7/
  package 'chrony'
  service 'chronyd' do
    action ['enable','start']
  end
end

# Clone down my dotfies
package 'git'
git '/root/backpack' do
  action :sync
  repository "https://github.com/PastaMasta/backpack.git"
  notifies :run, 'execute[Setup backpack]', :immediately
end

execute 'Setup backpack' do
  action :nothing
  command '/root/backpack/setup.sh'
end
