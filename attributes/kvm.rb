#
# Author:: PastaMasta (<pasta.masta2902@gmail.com>)
# Cookbook Name:: chef-base
# Attribue:: kvm
#
# Copyright 2018, PastaMasta
#

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
