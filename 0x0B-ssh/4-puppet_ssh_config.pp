#puppet manifest - automates ssh file configuration
include stdlib
file_line { 'PassAuthDisable':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => 'PasswordAuthentication yes'
  match  => '.*PasswordAuthentication.*'
}

file_line { 'PersonalizedSSHKey':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => 'IdentityFile ~/.ssh/ssh_config',
  match  => '.*Identity.*identity'
}
