#
# Author:: PastaMasta (<pasta.masta2902@gmail.com>)
# Cookbook Name:: chef-base
# Recipe:: data-tree
#
# Copyright 2017, PastaMasta
#

# Create common data structure
layout_dirs = node['data']['layout']
layout_dirs += [] if node['recipes'].include?('chef-base-dev::kvm')

layout_dirs.each do |dir|

  directory = File.join(node['data']['root'],dir)
  directory directory do
    action :create
    recursive true
  end

end

# Setup automount from master, if there is one - but not if we are the master
return unless node['master']
return if node['recipes'].include?('chef-master')

service 'autofs' do
  action [ :enable, :start ]
end

replace_or_add 'auto.master' do
  path '/etc/auto.master'
  pattern '/- /etc/auto.data'
  line '/- /etc/auto.data'
  notifies :restart, 'service[autofs]', :delayed
end

template '/etc/auto.data' do
  source 'etc/auto.data'
  notifies :restart, 'service[autofs]', :delayed
end

execute 'sebool use_nfs_home_dirs' do
  command 'setsebool -P use_nfs_home_dirs on'
  not_if 'getsebool use_nfs_home_dirs | grep -q on'
  only_if 'getenforce | grep -q -E "Enforcing|Permissive"'
end

# KVM automounts
replace_or_add 'auto.master' do
  path '/etc/auto.master'
  pattern '/- /etc/auto.virt'
  line '/- /etc/auto.virt'
  notifies :restart, 'service[autofs]', :delayed
end if node['recipes'].include?('chef-base-dev::kvm')

template '/etc/auto.virt' do
  source 'etc/auto.virt'
  notifies :restart, 'service[autofs]', :delayed
end if node['recipes'].include?('chef-base-dev::kvm')
