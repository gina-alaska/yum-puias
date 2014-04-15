default['yum']['puias-core']['repositoryid'] = 'puias-core'

default['yum']['puias-core']['description'] = 'PUIAS core Base $releasever - $basearch'
default['yum']['puias-core']['mirrorlist'] = 'http://puias.math.ias.edu/data/puias/$releasever/$basearch/os/mirrorlist'
default['yum']['puias-core']['gpgkey'] =  'http://springdale.math.ias.edu/data/puias/6/x86_64/os/RPM-GPG-KEY-puias'
default['yum']['puias-core']['failovermethod'] = 'priority'
default['yum']['puias-core']['gpgcheck'] = true
default['yum']['puias-core']['enabled'] = true
default['yum']['puias-core']['managed'] = true
