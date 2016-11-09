chef-base cookbook
======================

A standard base cookbook assigned to all nodes.

## chef-base::repos
- Sets up local repo access; updates costings on remote repos

## chef-base::packages
- Installs a set of common packages
    * `epel-release`
    * `nfs-utils`
    * `autofs`
    * `git`
    * `tmux`
    * `htop`
    * `bash-completion`


## chef-base::user
- Sets up automount and creates a local account

## chef-base::misc
- Sets up NTP

Dependencies
-------------------
- line

License and Authors
-------------------
Authors: PastaMasta  
See [LICENSE](LICENSE.md) for license rights and limitations (GNU GPLv3).
