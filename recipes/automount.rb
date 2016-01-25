#
# Author:: PastaMasta (<pasta.masta2902@gmail.com>)
# Cookbook Name:: base
# Recipe:: automount
#
# Copyright 2015, PastaMasta
#

package 'autofs' do
  action :install
end

service autofs do
  action [ :enable, :start ]
end

['auto.master','auto.repo'].each do |auto|
  template "/etc/#{auto}" do
    source auto 
    owner 'root'
    group 'root'
    mode '0444'
    notifies :restart, 'service[autofs]', :immediately
  end
end
