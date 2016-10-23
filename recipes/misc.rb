#
# Author:: PastaMasta (<pasta.masta2902@gmail.com>)
# Cookbook Name:: chef-base
# Recipe:: misc
#
# Copyright 2016, PastaMasta
#

# Make sure NTP is running
case node['platform']
  when "centos"
    service 'ntpd' do
      action ['enable','start']
    end
end
