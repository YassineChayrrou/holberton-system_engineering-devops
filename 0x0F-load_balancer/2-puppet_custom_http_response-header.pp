# Configures a server with nginx adding a custom header
exec { 'apt-get -y update':
  provider  => 'shell',
}
-> package {'check':
  name => "nginx",
  ensure => present,
}
-> exec { 'header':
  provider  => 'shell',
  command   => "sed -i "11i\   add_header X-Served-By $HOSTNAME;" /etc/nginx/nginx.conf",
}
-> exec { 'service nginx restart':
  provider  => 'shell',
}
