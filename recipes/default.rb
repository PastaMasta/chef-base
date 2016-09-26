#
# Author:: PastaMasta (<pasta.masta2902@gmail.com>)
# Cookbook Name:: base
# Recipe:: default
#
# Copyright 2015, PastaMasta
#

recipes = [
  'line',
  'chef-base::repos',
  'chef-base::packages',
  'chef-base::misc'
]

include_recipe(recipes)
