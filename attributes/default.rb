#
# Author:: PastaMasta (<pasta.masta2902@gmail.com>)
# Cookbook Name:: base
# Attribue:: default
#
#
# Copyright 2015, PastaMasta
#

default['access']['ssh_keys'] = [

'ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAxiaxYdjTN+A3Zus5iFtbtkKWBh8iaxNK9Pfhg1L1PevcJmqjhSNnVSVv07BeNtRCq5l6EyULboVFC0hfn2ek+VcbxITOgfa/otzLw3Qyza2/vZRYxUhGOTlLGteDC+V+1m9NXD0IH/VE0XEpabZ97C4VJDXK+Pclkhv4cn/wEP8BADh2W5sg+UwUghS7WqCoSkCycq2iJwWujW/xZ+AslHVFqeKrEKWklh2zkJzs0DW7b1yiLhzH8a3TBAEbGuk6dBUXMnKj9ksdgDnA5QScC8lDXLxBr3p3yU8UVUzbJz0EFoJvsHsYq7k25J269nN0+xZEn7y/u9OduTZADfOqIw== SBT'

]

default['repo']['repos'] = [
  'CentOS-Base.repo',
  'CentOS-fasttrack.repo',
  'CentOS-Vault.repo',
  'CentOS-Debuginfo.repo',
  'epel.repo',
  'epel-testing.repo',
  'CentOS-Media.repo'
]