# configures limits.conf file to setup holberton user access with root to os configs

exec {'no-limits-baby':
  path     => '/bin/',
  provider => 'shell',
  command  => 'sed -i "/^holberton/d" /etc/security/limits.conf',
}
