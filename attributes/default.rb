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

# KVM
default['kvm']['pools'] = %w(
  central
  isos
  local
  local_big
  local_fast
)
default['kvm']['dirs'] = %w(
  virt
  virt/isos
  virt/central
)
