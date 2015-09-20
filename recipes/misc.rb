#
# Author:: PastaMasta (<pasta.masta2902@gmail.com>)
# Cookbook Name:: base
# Recipe:: misc
#
# Copyright 2015, PastaMasta
#

# .vimrc stuff
cookbook_file '/etc/vimrc' do
  source 'vimrc'
  owner 'root'
  group 'root'
  mode '0444'
  action :create
end

