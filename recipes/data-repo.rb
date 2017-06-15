#
# Author:: PastaMasta (<pasta.masta2902@gmail.com>)
# Cookbook Name:: chef-base
# Recipe:: data-repo
#
# Copyright 2017, PastaMasta
#

# Create common data structure
node['data']['layout'].each do |dir|

  directory = File.join(node['data']['root'],dir)
  directory directory do
    action :create
    recursive true
  end

end

# Setup automount from master, if there is one.
return unless node['master']

package 'autofs'
service 'autofs' do
  action [ :enable, :start ]
end

replace_or_add 'auto.master' do
  path '/etc/auto.master'
  pattern '/- /etc/auto.data'
  line '/- /etc/auto.data'
  notifies :restart, 'service[autofs]', :delayed
end

template '/etc/auto.data' do
  source 'etc/auto.data'
  notifies :restart, 'service[autofs]', :delayed
end
