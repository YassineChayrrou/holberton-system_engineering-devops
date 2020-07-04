# custom HTTP header response using Puppet on nginx web server

exec { 'update':
command => 'sudo apt-get -y update',
provider => 'shell',
}

exec { 'nginxInstall':
command => 'sudo apt-get -y install nginx',
provider => 'shell',
}

exec { 'start_nginx':
command => 'sudo service nginx start',
provider => 'shell',
}

exec { 'configuration':                                                                                                                                                   
command => 'sed -i  "11i\\\tadd_header X-Served-By $HOSTNAME;" /etc/nginx/nginx.conf && sudo service nginx restart',                                                                                          
provider => 'shell',                                                                                                                                                            
}
