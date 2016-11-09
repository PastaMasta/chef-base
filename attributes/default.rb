#
# Author:: PastaMasta (<pasta.masta2902@gmail.com>)
# Cookbook Name:: chef-base
# Attribue:: default
#
# Copyright 2016, PastaMasta
#

default['base']['users'] = {
  'sbt' => { 'uid'=>1000,'home'=>'/home/sbt' }
}
