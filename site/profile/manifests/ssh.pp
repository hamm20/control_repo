class profile::ssh {
  service { '/usr/sbin/sshd':
    ensure => running,
    enable => true,
  }
}
