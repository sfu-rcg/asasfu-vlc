# == Class: vlc
#
# Module to allow yum install and dependency management of vlc 
# while allowing you to pick repos to enable for the run.
#
# === Parameters
#
# [*ensure_version*]
#  Ensure parameter passed to Package resource to ensure specific version or other 
#   option such as latest
#   Default: latest
#
# === Examples
#
#  class { '::vlc':
#    ensure_version => '2.1.5-2.el7.nux',
#  }
#
# === Authors
#
# Adam S <asa188@sfu.ca>
#
# === Copyright
#
# Copyright 2015 SFU, unless otherwise noted.
#
class vlc (
  $ensure_version = 'latest',
  $required_repos = $::vlc::params::required_repos
) inherits ::vlc::params {
  include ::yumrepos
  include ::x264
  package { 'vlc':
    ensure => "${ensure_version}",
    install_options => { "--enablerepo" => "${required_repos}" },
    require => [ Class[::yumrepos], Class[::x264] ],
  }
  package { 'vlc-extras':
    ensure => "${ensure_version}",
    install_options => { "--enablerepo" => "${required_repos}" },
    require => [ Class[::yumrepos] ],
  }
}
