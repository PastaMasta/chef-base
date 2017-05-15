#
# Author:: PastaMasta (<pasta.masta2902@gmail.com>)
# Cookbook Name:: chef-base
# Recipe:: default
#
# Copyright 2015, PastaMasta
#

# Find out who our master server is!
masters = search(:node, 'recipes:"chef-master"') rescue nil
if masters.nil? || masters.empty?
  node.default['base']['master'] = "masterless"
else
  node.default['base']['master'] = masters.first.name 
end

recipes = [
  'chef-base::repos',
  'chef-base::packages',
  'chef-base::user',
  'chef-base::misc'
]

include_recipe(recipes)
