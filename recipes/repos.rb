#
# Author:: PastaMasta (<pasta.masta2902@gmail.com>)
# Cookbook Name:: basic
# Recipe:: repos
#
# Copyright 2015, PastaMasta
#

cookbook_file '/etc/yum.repos.d/Lab-Base.repo' do
  source 'Lab-Base.repo'
  owner 'root'
  group 'root'
  mode '0444'
  action :create
end

cookbook_file '/etc/yum.repos.d/Lab-epel.repo' do
  source 'Lab-epel.repo'
  owner 'root'
  group 'root'
  mode '0444'
  action :create
end

cookbook_file '/etc/yum.repos.d/Lab-Stuff.repo' do
  source 'Lab-Stuff.repo'
  owner 'root'
  group 'root'
  mode '0444'
  action :create
end
