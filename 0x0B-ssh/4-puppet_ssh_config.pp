#puppet manifest - automates ssh file configuration
augeas { 'ssh_config':

      context => '/etc/ssh/sshd_config',
      changes => [
        'set PasswordAuthentification no',
        'set IdentifyFiles ~/.ssh/holberton',
      ],
}
