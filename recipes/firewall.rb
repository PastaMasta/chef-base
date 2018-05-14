#
# Author:: PastaMasta (<pasta.masta2902@gmail.com>)
# Cookbook Name:: chef-base
# Recipe:: firewall
#
# Copyright 2018, PastaMasta
#

case "#{node['platform']} #{node['platform_version']}"
when /centos 7/

package 'firewalld'

  service 'firewalld' do
    action [:enable, :start]
  end

  template '/etc/firewalld/zones/internal.xml' do
    action :create_if_missing
    source 'etc/firewalld/zones/internal.xml.erb'
    notifies :reload, 'service[firewalld]',:immediately
  end

  template '/etc/firewalld/firewalld.conf' do
    action :create
    source 'etc/firewalld/firewalld.conf.erb'
    notifies :reload, 'service[firewalld]',:immediately
  end

end
