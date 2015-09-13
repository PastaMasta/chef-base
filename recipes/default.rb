#
# Author:: PastaMasta (<pasta.masta2902@gmail.com>)
# Cookbook Name:: basic
# Recipe:: default
#
# Copyright 2015, PastaMasta
#

include_recipe [
  'basic::access',
  'basic::repos',
  'basic::misc'
]
