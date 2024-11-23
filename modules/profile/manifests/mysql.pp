# mysql profile
class profile::mysql {
  class { 'mysql::server':
    root_password           => 'SweetC0rn',
    remove_default_accounts => true,
    restart                 => true,
  }
}
