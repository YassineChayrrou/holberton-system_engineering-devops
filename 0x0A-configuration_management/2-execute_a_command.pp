# Puppet manifest - kills killmenow process
exec { 'pkill killmenow':
  path    => '/usr/bin'
}
