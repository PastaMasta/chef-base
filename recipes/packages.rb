#
# Author:: PastaMasta (<pasta.masta2902@gmail.com>)
# Cookbook Name:: chef-base
# Recipe:: repos
#
# Copyright 2016, PastaMasta
#

# Select relevent packages
case "#{node['platform']} #{node['platform_version']}"
when /centos [6-7]/

  packages = [
    "vim",
    "epel-release",
    "nfs-utils",
    "autofs",
    "git",
    "tmux",
    "htop",
    "bash-completion"
  ]

end

packages.each do |package|
  package package do
    action :install
  end
end
