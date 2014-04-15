default['yum']['puias-unsupported']['repositoryid'] = 'puias-unsupported'

default['yum']['puias-unsupported']['description'] = 'PUIAS unsupported Base $releasever - $basearch'
default['yum']['puias-unsupported']['mirrorlist'] = 'http://puias.math.ias.edu/data/puias/unsupported/$releasever/$basearch/mirrorlist'
default['yum']['puias-unsupported']['gpgkey'] =  'http://springdale.math.ias.edu/data/puias/6/x86_64/os/RPM-GPG-KEY-puias'
default['yum']['puias-unsupported']['failovermethod'] = 'priority'
default['yum']['puias-unsupported']['gpgcheck'] = true
default['yum']['puias-unsupported']['enabled'] = false
default['yum']['puias-unsupported']['managed'] = true
