#
# Author:: PastaMasta (<pasta.masta2902@gmail.com>)
# Cookbook Name:: base
# Recipe:: default
#
# Copyright 2015, PastaMasta
#

include_recipe [
  'base::access',
  'base::repos',
  'base::misc'
]
