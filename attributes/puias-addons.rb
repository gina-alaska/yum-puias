default['yum']['puias-addons']['repositoryid'] = 'puias-addons'

default['yum']['puias-addons']['description'] = 'PUIAS addons Base $releasever - $basearch'
default['yum']['puias-addons']['baseurl'] = 'http://puias.princeton.edu/data/puias/$releasever/$basearch/os/Addons'
default['yum']['puias-addons']['gpgkey'] =  'http://springdale.math.ias.edu/data/puias/6/x86_64/os/RPM-GPG-KEY-puias'
default['yum']['puias-addons']['failovermethod'] = 'priority'
default['yum']['puias-addons']['gpgcheck'] = true
default['yum']['puias-addons']['enabled'] = false
default['yum']['puias-addons']['managed'] = true
