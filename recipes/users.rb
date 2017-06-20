#
# Author:: PastaMasta (<pasta.masta2902@gmail.com>)
# Cookbook Name:: chef-base
# Recipe:: misc
#
# Copyright 2017, PastaMasta
#

# Add users
node['base']['users'].each do |user,attr|
  user user do
    action :create
    uid attr['uid']
    home attr['home']
    manage_home false
  end
end
