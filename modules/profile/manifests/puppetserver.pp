# puppet server profile
class profile::puppetserver {
  package { 'puppetserver':
    ensure => 'installed',
  }
  file { 'sysconfig-puppetserver':
    ensure  => 'file',
    path    => '/etc/sysconfig/puppetserver',
    source  => 'puppet_course/files/sysconfig-puppetserver',
    require => Package['puppetserver'],
  }
  service { 'puppetserver':
    ensure   => 'running',
    enable   => true,
    provider => 'systemd',
  }
}
