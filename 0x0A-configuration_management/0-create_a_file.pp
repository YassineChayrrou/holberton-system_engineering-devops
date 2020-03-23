# Puppet manifest - creates a file
file { '/tmp/holberton':
  ensure  => 'present',
  path    => '/tmp/holberton',
  content => 'I love Puppet',
  owner   => 'www-data',
  group   => 'www-data',
  mode    => '0744',
}
