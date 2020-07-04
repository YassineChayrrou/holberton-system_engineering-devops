#nginx install and configuration as mentioned on task 3 using puppet

exec {'update-server':
  provider => shell,
  path     => '/usr/bin',
  command  => 'sudo apt-get -y update',
}

exec {'install-nginx':
  provider => shell,
  path     => '/usr/bin',
  command  => 'sudo apt-get -y install nginx',
}

exec {'custom-html':
  provider => shell,
  command  => 'sudo echo "Holberton School" | sudo tee /var/www/html/index.nginx-debian.html',
}

exec {'start-nginx':
  provider => shell,
  command  => 'sudo service nginx start',
}

exec {'redirection-setup':
  provider => shell,
  command  => "sudo sed -n -i 'p;19a rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;' /etc/nginx/sites-enabled/default",
}

exec {'restart-nginx':
  provider => shell,
  command  => 'sudo service nginx restart',
}
