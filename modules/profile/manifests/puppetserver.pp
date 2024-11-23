# puppet server profile
class profile::puppetserver {
  service { 'puppetserver':
    ensure   => 'running',
    enable   => true,
    provider => 'systemd',
  }
}
