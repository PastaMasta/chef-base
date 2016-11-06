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

    # Wipe out the default repos
    repos = [
      'CentOS-Base.repo',
      'CentOS-Debuginfo.repo',
      'CentOS-fasttrack.repo',
      'CentOS-Media.repo',
      'CentOS-Vault.repo'
    ].each do |file|
      file = File.join('/etc/yum.repos.d/',file)
      file file do
        action :delete
      end
    end

    # Setup local mirrors
    template '/etc/yum.repos.d/Local-CentOS-Base.repo' do
      source 'Local-CentOS-Base.repo.erb'
      action :create
    end

end
