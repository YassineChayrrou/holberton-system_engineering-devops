#nginx install and configuration as mentioned on task 3 using puppet
exec{'command':
  command => '/usr/bin/wget -q https://raw.githubusercontent.com/YassineChayrrou/holberton-system_engineering-devops/master/0x0C-web_server/3-redirection',
  creates => '/home/ubuntu/3-redirection',
}

file{'/home/ubuntu/3-redirection':
  mode    => '0755',
  require => Exec['3-redirection'],
}

exec {'html':
  provider => shell,
  command  => 'sudo echo "Holberton School" | sudo tee /var/www/html/index.nginx-debian.html',
}
