# Class: db
class role::db {
  include profile::base
  include profile::puppetdb
  include profile::puppet_agent
}
