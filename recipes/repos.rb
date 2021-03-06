#
# Author:: PastaMasta (<pasta.masta2902@gmail.com>)
# Cookbook Name:: base
# Recipe:: repos
#
# Copyright 2017, PastaMasta
#

# Setup repos
case "#{node['platform']} #{node['platform_version']}"
when /centos [6-7]/

  package 'epel-release'

  if node['base']['local_repos']
    # Remove system defaults
    Dir.entries('/etc/yum.repos.d').select {|a|a.match(/^CentOS.*\.repo/)}.each do |repo|
      Chef::Log.info("Removing repo: #{repo}")
      file '/etc/yum.repos.d/' + repo do
	action :delete
      end
    end unless node['master'].nil?

    # Setup local mirrors
    template '/etc/yum.repos.d/Local-CentOS.repo' do
      source 'repos/Local-CentOS.repo.erb'
      action :create
      variables({ master: node['master'] })
    end if node['master']
  end

end
