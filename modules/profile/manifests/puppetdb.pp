# Class: puppetdb
class profile::puppetdb {
  # Configure puppetdb and its underlying database
  class { 'puppetdb':
    postgresql_ssl_on       => true,
    database_host           => 'db.local',
    database_listen_address => '0.0.0.0',
  }
}
