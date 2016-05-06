#
# Author:: PastaMasta (<pasta.masta2902@gmail.com>)
# Cookbook Name:: base
# Recipe:: misc
#
# Copyright 2015, PastaMasta
#

# Make sure NTP is running
service 'ntpd' do
  action ['enable','start']
end
