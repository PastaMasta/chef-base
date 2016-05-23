#
# Author:: PastaMasta (<pasta.masta2902@gmail.com>)
# Cookbook Name:: base
# Recipe:: default
#
# Copyright 2015, PastaMasta
#

recipes = [
  'line',
  'chef-base::access',
  'chef-base::automount',
  'chef-base::misc',
  'chef-base::repos'
]

recipes = recipes - ['chef-base::automount'] if node['recipes'].include?("chef-master")

include_recipe(recipes)
