# fix wordpress error 500 puppet automation
exec { 'wp-settingsFix':
  path    => '/bin',
  command => "sed -i 's/class-wp-locale.phpp/class-wp-locale.php/g' /var/www/html/wp-settings.php"
}
