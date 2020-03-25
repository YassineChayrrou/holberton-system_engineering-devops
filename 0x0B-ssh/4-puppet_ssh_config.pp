include stdlib
#puppet manifest - automates ssh file configuration
file_line { 'PassAuthDisable':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => 'PasswordAuthentication no',
  match  => '.*PasswordAuthentication.*',
}

file_line { 'PersonalizedSSHKey':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => 'IdentityFile ~/.ssh/holberton',
  match  => '.*Identity.*identity',
}
