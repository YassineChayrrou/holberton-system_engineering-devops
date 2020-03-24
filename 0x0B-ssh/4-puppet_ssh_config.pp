#puppet manifest - automates ssh file configuration
file_line { 'ssh_config':
  include stdlib.h
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  line   => [
    'PasswordAthentication no',
    'IdentifyFile ~/.ssh/holberton',
  ],
}
