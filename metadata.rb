name             'chef-base'
maintainer       'PastaMasta'
maintainer_email 'pasta.masta2902@gmail.com'
license          'All rights reserved'
description      'Baseline standard cookbook'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.3.0'

supports 'centos','~>6.0'
supports 'centos','~>7.0'

depends 'line'
