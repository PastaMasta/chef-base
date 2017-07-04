#
# Author:: PastaMasta (<pasta.masta2902@gmail.com>)
# Cookbook Name:: chef-base
# Recipe:: firewall
#
# Copyright 2017, PastaMasta
#

package 'firewalld'

service 'firewalld' do
  action [:enable, :start]
end

template '/etc/firewalld/zones/lab-internal.xml' do
  action :create
  source 'firewalld/lab-internal.xml.erb'
  notifies :reload, 'service[firewalld]',:immediately
end

template '/etc/firewalld/firewalld.conf' do
  action :create
  source 'firewalld/firewalld.conf.erb'
  notifies :reload, 'service[firewalld]',:immediately
end
