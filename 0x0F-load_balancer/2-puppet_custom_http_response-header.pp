# Automates a custom HTTP header response nginx setup

exec { 'installation':
  command  => 'sudo apt-get -y install nginx',
  provider => 'shell',
}

exec { 'header':
  command  => 'sudo sed -i "11i\	add_header X-Served-By $HOSTNAME;" /etc/nginx/nginx.conf',
  provider => 'shell',
}

exec { 'restart':
  command  => 'service nginx restart',
  provider => 'shell',
}
