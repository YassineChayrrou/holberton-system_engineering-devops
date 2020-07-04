# Puppet file to install nginx with custom install as Task 3

exec {'updateSys':
  provider => shell,
  path     => '/usr/bin:/usr/sbin:/bin',
  command  => 'sudo apt-get update -y',
}

exec {'nginx':
  provider => shell,
  path     => '/usr/bin:/usr/sbin:/bin',
  command  => 'sudo apt-get install nginx -y',
}

exec {'HolbertonSchool':
  provider => shell,
  command  => 'sudo echo "Holberton School" | sudo tee /var/www/html/index.nginx-debian.html',
}

exec {'redirection':
  provider => shell,
  command  => "sudo sed -n -i 'p;19a rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;' /etc/nginx/sites-enabled/default",
}

exec {'nginxStart':
  provider => shell,
  command  => 'sudo service nginx start',
}
