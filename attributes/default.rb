#
# Author:: PastaMasta (<pasta.masta2902@gmail.com>)
# Cookbook Name:: chef-base
# Attribue:: default
#
# Copyright 2016, PastaMasta
#

# Common data layout across everything
default['data']['root'] = '/data'
default['data']['layout'] = [
  'users',
  'virt',
  'repo',
  'docs',
  'backup'
]


default['base']['users'] = {
  'sbt' => { 'uid'=>1000,'home'=>'/home/sbt' }
}
