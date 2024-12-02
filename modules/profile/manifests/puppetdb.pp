# Class: puppetdb
class profile::puppetdb {
  # Configure puppetdb and its underlying database
  class { 'puppetdb':
    postgresql_ssl_on       => true,
    database_host           => 'db.as.ubc.ca',
    database_listen_address => '0.0.0.0',
  }
  # uncomment after the first successful agent run
  # after host cert is signed on the master
  exec { '/opt/puppetlabs/bin/puppetdb ssl-setup -f': }
}
