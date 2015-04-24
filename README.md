asasfu-vlc
======

`vlc` Package install with puppet on Centos 6 &amp; 7 - supports repositories and versions

Documentation
-------------

Documentation for this and related projects can be found online at the
https://github.com/sfu-rcg/

Installation
------------

This module relies on you to ensure the required repos are installed.  They do not need to have 'enabled=1' as this module was made to support switching repos to 'enabled' only as required by the specific module.

Usage
-----

Defaults for this module contains the repo listed in the params class and defaults to latest package version.  This may be overridden in your puppet configs by calling any of the following:

  ```puppet
  class { 'vlc':
    ensure_version  => '2.1.4'
  }
  ```
  or

  ```puppet
  class { 'vlc':
    required_repos  => 'epel,nux-dextop'
  }
  ```
You can use one or both values
  
If using hiera or the foreman to provide YAML values
  ```yaml 
  ---
  classes:
    vlc:
      ensure_version: 2.1.4-6.el7.nux
  ```

In the foreman you can assign an override to the parameters in this class and it will function properly

Developing and Contributing
------

We'd love to get contributions from you!
We're always curious how we can make this more functional and modular for everyone's greater good in systems automation

License
-------

See LICENSE.md file.

Support
-------

There is no expectation of support for this module but we will in all attempts work on maintaining it to support our wide uses of linux
