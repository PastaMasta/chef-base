#
# Author:: PastaMasta (<pasta.masta2902@gmail.com>)
# Cookbook Name:: chef-base
# Recipe:: users
#
# Copyright 2017, PastaMasta
#
# Poor mans LDAP

# Add users
node['base']['users'].each do |user,attr|
  user user do
    action :create
    uid attr['uid']
    home attr['home']
    shell attr['shell']
    manage_home false
  end
end

# Add groups
node['base']['groups'].each do |group,attr|
  group group do
    action :create
    append true
    gid attr['gid']
    members attr['members']
  end
end
