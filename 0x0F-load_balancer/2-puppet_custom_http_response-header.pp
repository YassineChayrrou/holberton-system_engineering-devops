# Automates a custom HTTP header response nginx setup

exec { 'Header_setup':
command  => 'sudo sed -i "11i\	add_header X-Served-By $HOSTNAME;" /etc/nginx/nginx.conf',
provider => 'shell',
}
