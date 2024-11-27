# class puppet agent
class profile::puppet_agent {
  class { 'puppet_agent':
    package_version => 'latest',
  }
}
