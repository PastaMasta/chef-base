#
# Author:: PastaMasta (<pasta.masta2902@gmail.com>)
# Cookbook Name:: chef-base
# Recipe:: repos
#
# Copyright 2016, PastaMasta
#

# Select relevent packages
case node['platform']
  when "centos"
    packages = [
      "epel-release",
      "git",
      "tmux",
      "htop"
    ]
end

packages.each do |package|
  package package do
    action :install
  end
end
