#yum-puias Cookbook

The yum-puias takes over management of the repositories provided
by the puias yum repository. It allows attribute manipulation of the
`puias-core`, `puias-addons`, `puias-unsupported`, `puias-computational`.

## Requirements
* Chef 11 or higher
* yum cookbook version 3.0.0 or higher

## Supported Platforms

RedHat 6
Centos 6

## Attributes
The following attributes are set by default

```ruby
default['yum']['puias-core']['repositoryid'] = 'puias-core'

default['yum']['puias-core']['description'] = 'PUIAS core Base $releasever - $basearch'
default['yum']['puias-core']['mirrorlist'] = 'http://puias.math.ias.edu/data/puias/$releasever/$basearch/os/mirrorlist'
default['yum']['puias-core']['gpgkey'] =  'http://springdale.math.ias.edu/data/puias/6/x86_64/os/RPM-GPG-KEY-puias'
default['yum']['puias-core']['failovermethod'] = 'priority'
default['yum']['puias-core']['gpgcheck'] = true
default['yum']['puias-core']['enabled'] = false
default['yum']['puias-core']['managed'] = true
```

```ruby
default['yum']['puias-addons']['repositoryid'] = 'puias-addons'

default['yum']['puias-addons']['description'] = 'PUIAS addons Base $releasever - $basearch'
default['yum']['puias-addons']['baseurl'] = 'http://puias.princeton.edu/data/puias/$releasever/$basearch/os/Addons'
default['yum']['puias-addons']['gpgkey'] =  'http://springdale.math.ias.edu/data/puias/6/x86_64/os/RPM-GPG-KEY-puias'
default['yum']['puias-addons']['failovermethod'] = 'priority'
default['yum']['puias-addons']['gpgcheck'] = true
default['yum']['puias-addons']['enabled'] = false
default['yum']['puias-addons']['managed'] = true
```

```ruby
default['yum']['puias-computational']['repositoryid'] = 'puias-computational'

default['yum']['puias-computational']['description'] = 'PUIAS computational Base $releasever - $basearch'
default['yum']['puias-computational']['mirrorlist'] = 'http://puias.math.ias.edu/data/puias/computational/$releasever/$basearch/mirrorlist'
default['yum']['puias-computational']['gpgkey'] =  'http://springdale.math.ias.edu/data/puias/6/x86_64/os/RPM-GPG-KEY-puias'
default['yum']['puias-computational']['failovermethod'] = 'priority'
default['yum']['puias-computational']['gpgcheck'] = true
default['yum']['puias-computational']['enabled'] = false
default['yum']['puias-computational']['managed'] = true
```

```ruby
default['yum']['puias-unsupported']['repositoryid'] = 'puias-unsupported'

default['yum']['puias-unsupported']['description'] = 'PUIAS unsupported Base $releasever - $basearch'
default['yum']['puias-unsupported']['mirrorlist'] = 'http://puias.math.ias.edu/data/puias/unsupported/$releasever/$basearch/mirrorlist'
default['yum']['puias-unsupported']['gpgkey'] =  'http://springdale.math.ias.edu/data/puias/6/x86_64/os/RPM-GPG-KEY-puias'
default['yum']['puias-unsupported']['failovermethod'] = 'priority'
default['yum']['puias-unsupported']['gpgcheck'] = true
default['yum']['puias-unsupported']['enabled'] = false
default['yum']['puias-unsupported']['managed'] = true
```


## Usage
The unsupported repositoryid is disabled by default. To enable it in a wrapper cookbook, you can add
the following to a recipe:

```ruby
node.default['yum']['puias-unsupported']['enabled'] = true
include_recipe 'yum-puias'
```

### yum-puias::default

Include `yum-puias` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[yum-puias::default]"
  ]
}
```

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (i.e. `add-new-recipe`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request

## License and Authors

Author:: UAFGINA (<scott@gina.alaska.edu>)
