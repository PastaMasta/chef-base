#
# Author:: PastaMasta (<pasta.masta2902@gmail.com>)
# Cookbook Name:: base
# Recipe:: default
#
# Copyright 2015, PastaMasta
#

include_recipe [
  'line',
  'chef-base::access',
  'chef-base::automount',
  'chef-base::misc',
  'chef-base::repos'
]
