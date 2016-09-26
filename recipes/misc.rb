#
# Author:: PastaMasta (<pasta.masta2902@gmail.com>)
# Cookbook Name:: chef-base
# Recipe:: misc
#
# Copyright 2016, PastaMasta
#

# Add me!
group 'sbt' do
  action :create
  gid 1000
end

user 'sbt' do
  action :create
  uid 1000
  gid 1000
end

# Make sure NTP is running
case node['platform']
  when "centos"
    service 'ntpd' do
      action ['enable','start']
    end
end
