#
# Author:: PastaMasta (<pasta.masta2902@gmail.com>)
# Cookbook Name:: base
# Recipe:: repos
#
# Copyright 2015, PastaMasta
#

# Setup repos
node['repo']['repos'].each do |repo|
  cookbook_file "/etc/yum.repos.d/#{repo}" do
    source repo
    owner 'root'
    group 'root'
    mode '0444'
    action :create
  end
end

# Install epel-release
package 'epel-release' do
  action :install
end

# Clean up other repos
node['repo']['repo_cleanup'].each do |cleanup|
  file "/etc/yum.repos.d/#{cleanup}" do
    action :delete
  end
end

