#
# Author:: PastaMasta (<pasta.masta2902@gmail.com>)
# Cookbook Name:: chef-base
# Recipe:: kvm
#
# Copyright 2017, PastaMasta
#

# Install KVM and setup storage repo
packages = [
  'libvirt',
  'virt-install',
  'qemu-kvm',
  'bridge-utils',
  'virt-manager'
]

packages.each do |pkg|
  package pkg do
    action :install
  end
end

service 'libvirtd' do
  action [ :enable, :start]
end

# Define kvm storage pools if they exist
pools = {}
node['kvm']['pools'].each do |pool|
  dir = File.join(node['data']['root'],"virt/#{pool}")
  pools[pool] = dir if File.directory?(dir)
end

pools.each do |pool,path|

  execute "define libvirt pool #{pool}" do
    command "/usr/bin/virsh --quiet pool-define-as #{pool} dir --target #{path}"
    not_if "/usr/bin/virsh pool-info #{pool}"
  end
  execute "autostart pool #{pool}" do
    command "/usr/bin/virsh --quiet pool-autostart #{pool}"
    not_if "/usr/bin/virsh pool-info #{pool} | grep -E 'Autostart:\s*yes' "
  end
  execute "start pool #{pool}" do
    command "/usr/bin/virsh --quiet pool-start #{pool}"
    not_if "/usr/bin/virsh pool-info #{pool} | grep -E 'State:\s*running' "
  end

end
