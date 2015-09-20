#
# Author:: PastaMasta (<pasta.masta2902@gmail.com>)
# Cookbook Name:: base
# Recipe:: repos
#
# Copyright 2015, PastaMasta
#

default['repo']['repos'] = [
  'CentOS-Base.repo',
  'CentOS-fasttrack.repo',
  'CentOS-Vault.repo',
  'CentOS-Debuginfo.repo',
  'CentOS-Media.repo']
