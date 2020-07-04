# Configures a server with nginx adding a custom header

exec { 'update_packages':
  path    => ['/bin/', '/sbin/', '/usr/bin/', '/usr/sbin/'],
  command => 'sudo apt-get -y update',
}

exec { 'start_nginx':
  path     => ['/bin/', '/sbin/', '/usr/bin/', '/usr/sbin/'],
  command  => 'sudo apt-get -y install nginx',
  provider => 'shell',
}

exec { 'restart_nginx':
  path     => ['/bin/', '/sbin/', '/usr/bin', '/usr/sbin'],
  command  => 'sed -i -e "/sendfile/i \\\tadd_header X-Served-By $HOSTNAME;" /etc/nginx/nginx.conf && sudo service nginx restart',
  provider => 'shell',
}
