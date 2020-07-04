#nginx install and configuration as mentioned on task 3 using puppet

exec {'update-server':
  provider => shell,
  path     => '/usr/bin',
  command  => 'apt-get update -y',
}

exec {'install-nginx':
  provider => shell,
  path     => '/usr/bin',
  command  => 'apt-get install nginx -y',
}

exec {'custom-html':
  provider => shell,
  command  => 'echo "Holberton School" | sudo tee /var/www/html/index.nginx-debian.html',
}


exec {'redirection-setup':
  provider => shell,
  command  => "sed -n -i 'p;19a rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;' /etc/nginx/sites-enabled/default",
}

exec {'start-nginx':
  provider => shell,
  command  => 'service nginx start',
}
