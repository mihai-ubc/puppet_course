# Class: puppetdb
class profile::puppetdb {
  # Configure puppetdb and its underlying database
  class { 'puppetdb': }

  # Configure the Puppet master to use puppetdb
  class { 'puppetdb::master::config':
    enable_reports          => true,
    manage_report_processor => true,
  }
}
