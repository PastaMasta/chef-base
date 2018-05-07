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
  'repo',
  'docs',
  'backup'
]

# Poor mans AD
default['base']['groups'] = {}
default['base']['users'] = {}

# Misc packages
default['base']['pre_packages'] = %w(
  epel-release
)
default['base']['packages'] = %w(
  git
  htop
  vim
  wget
  curl
  bash-completion
  tree
)
