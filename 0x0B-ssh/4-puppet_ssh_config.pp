#puppet manifest - automates ssh file configuration
augeas { 'ssh_config':

      context => 'files/etc/ssh/sshd_config',
      changes => [
        'set PasswordAuthentification no',
        'set IdentifyFiles ~/.ssh/holberton',
      ],
}
