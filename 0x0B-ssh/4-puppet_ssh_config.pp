#puppet manifest - automates ssh file configuration
exec {'PasswordAuthentication':
  path     => '/bin',
  command  => "sed -i 's/.*PasswordAuthentication.*/    PasswordAuthentication yes/' /etc/ssh/ssh_config",
  provider => 'shell',
}

exec { 'IdentityFile':
  path     => '/bin',
  command  => "sed -i '0,/.*IdentityFile.*/s/.*IdentityFile.*/    IdentityFile ~\/.ssh\/holberton/' /etc/ssh/ssh_config",
  provider => 'shell',
}
