#
# Author:: PastaMasta (<pasta.masta2902@gmail.com>)
# Cookbook Name:: chef-base
# Recipe:: misc
#
# Copyright 2016, PastaMasta
#

# Setup automount
unless node['base']['master'] == "masterless"
  service 'autofs' do
    action [ :enable, :start ]
  end

  replace_or_add 'auto.master' do
    path '/etc/auto.master'
    pattern '/home /etc/auto.home'
    line '/home /etc/auto.home'
    notifies :restart, 'service[autofs]', :delayed
  end

  template '/etc/auto.home' do
    source 'auto.home.erb'
    notifies :restart, 'service[autofs]', :delayed
  end
end

# Add users
node['base']['users'].each do |user,attr|
  user user do
    action :create
    uid attr['uid']
    home attr['home']
    manage_home false
  end
end
