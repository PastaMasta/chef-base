#
# Author:: PastaMasta (<pasta.masta2902@gmail.com>)
# Cookbook Name:: chef-base
# Recipe:: default
#
# Copyright 2015, PastaMasta
#

# Find out who our master server is!
masters = search(:node, 'recipes:"chef-master"') rescue nil
node.default['master'] = masters.first.name unless masters.nil? || masters.empty?

recipes = [
  cookbook_name + '::repos',
  cookbook_name + '::packages',
  cookbook_name + '::data-tree',
  cookbook_name + '::users',
  cookbook_name + '::misc',
  cookbook_name + '::firewall',
  'chef-client::config',
  'chef-client::delete_validation',
  'chef-client'
]

include_recipe(recipes)
