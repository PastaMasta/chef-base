#
# Author:: PastaMasta (<pasta.masta2902@gmail.com>)
# Cookbook Name:: chef-base
# Recipe:: default
#
# Copyright 2015, PastaMasta
#

recipes = [
  'line',
  'chef-base::packages',
  'chef-base::user',
  'chef-base::misc'
]

include_recipe(recipes)
