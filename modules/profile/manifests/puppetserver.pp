# puppet server profile
class profile::puppetserver {
  package { 'puppetserver':
    ensure => 'installed',
  }
  file { 'sysconfig-puppetserver':
    ensure  => 'file',
    path    => '/etc/sysconfig/puppetserver',
    source  => '/puppet_course/files/sysconfig-puppetserver',
    require => Package['puppetserver'],
  }
  service { 'puppetserver':
    ensure   => 'running',
    enable   => true,
    provider => 'systemd',
  }
  # Configure the Puppet master to use puppetdb
  class { 'puppetdb::master::config':
    enable_reports          => true,
    manage_report_processor => true,
    puppetdb_server         => 'db.local',
    puppetdb_port           => 8081,
  }
}
