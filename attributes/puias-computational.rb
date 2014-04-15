default['yum']['puias-computational']['repositoryid'] = 'puias-computational'

default['yum']['puias-computational']['description'] = 'PUIAS computational Base $releasever - $basearch'
default['yum']['puias-computational']['mirrorlist'] = 'http://puias.math.ias.edu/data/puias/computational/$releasever/$basearch/mirrorlist'
default['yum']['puias-computational']['gpgkey'] =  'http://springdale.math.ias.edu/data/puias/6/x86_64/os/RPM-GPG-KEY-puias'
default['yum']['puias-computational']['failovermethod'] = 'priority'
default['yum']['puias-computational']['gpgcheck'] = true
default['yum']['puias-computational']['enabled'] = false
default['yum']['puias-computational']['managed'] = true
