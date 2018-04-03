#
# Author:: PastaMasta (<pasta.masta2902@gmail.com>)
# Cookbook Name:: chef-base
# Recipe:: misc
#
# Copyright 2017, PastaMasta
#

#
# Install packages
#
packages = %w(
  git
  htop
  vim
  wget
  curl
)

package packages

# Make sure we have some clocksync
case "#{node['platform']} #{node['platform_version']}"
when /centos 6/
  package 'ntpd'
  service 'ntpd' do
    action ['enable','start']
  end
when /centos 7/
  package 'chrony'
  service 'chronyd' do
    action ['enable','start']
  end
end
