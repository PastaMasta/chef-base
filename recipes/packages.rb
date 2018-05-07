#
# Author:: PastaMasta (<pasta.masta2902@gmail.com>)
# Cookbook Name:: chef-base
# Recipe:: packages
#
# Copyright 2018, PastaMasta
#

#
# Install misc packages
#
package node['base']['packages'] do
  action :install
end
