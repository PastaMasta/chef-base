#
# Author:: PastaMasta (<pasta.masta2902@gmail.com>)
# Cookbook Name:: base
# Recipe:: access
#
# Copyright 2015, PastaMasta
#

# Add my generic SSH access key.

directory '/root/.ssh' do
  owner 'root'
  group 'root'
  mode 0700
  action :create
end

cookbook_file '/root/.ssh/authorized_keys' do
  source 'authorized_keys'
  owner 'root'
  group 'root'
  mode 0700
end
