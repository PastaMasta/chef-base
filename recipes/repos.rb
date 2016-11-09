#
# Author:: PastaMasta (<pasta.masta2902@gmail.com>)
# Cookbook Name:: base
# Recipe:: repos
#
# Copyright 2015, PastaMasta
#

# Setup repos
case node['platform']
  when "centos"

    # Replace default repos with high cost ones
    template '/etc/yum.repos.d/CentOS-Base.repo' do
      source "repos/CentOS-Base.repo.erb"
      action :create
    end

    # Setup local mirrors
    template '/etc/yum.repos.d/Local-CentOS-Base.repo' do
      source 'repos/Local-CentOS-Base.repo.erb'
      action :create
    end

end
