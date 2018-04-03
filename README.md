chef-base cookbook
======================

This cookbook sets up standard things for my environment.

This is designed to be used with chef-master.

## chef-base::data-tree
- Setups up a common directory structure with automounts from node['master'] if appropriate.

```
/data
├── backup
├── docs
├── repo
└── users
```

## chef-base::repos
- Sets up yum repos for CentOS mirrors hosted on master

## chef-base::user
- Sets up automount and creates a local account

## chef-base::misc
- Sets up NTP

## chef-base::kvm
- Optional, sets up KVM with standards storage pools

Dependencies
-------------------
- line

License and Authors
-------------------
Authors: PastaMasta  
See [LICENSE](LICENSE.md) for license rights and limitations (GNU GPLv3).
