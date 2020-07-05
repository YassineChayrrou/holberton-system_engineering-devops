# customize nginx for better benchmark when testing server under requests pressure

exec {'ab-fix':
  command  => 'sed-i "s/worker_processes 4;/worker_processes 8;/g" /etc/nginx/nginx.conf && /etc/init.d/nginx restart',
  path     => '/bin/',
  provider => 'shell',
}

