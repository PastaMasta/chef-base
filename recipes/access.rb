#
# Author:: PastaMasta (<pasta.masta2902@gmail.com>)
# Cookbook Name:: base
# Recipe:: access
#
# Copyright 2015, PastaMasta
#

# Add my generic SSH access key.
node['access']['ssh_keys'].each do |key|
  append_if_no_line "Add ssh keys" do
    path "/root/.ssh/authorized_keys"
    line key
  end
end
