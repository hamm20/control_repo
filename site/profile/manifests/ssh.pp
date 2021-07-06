class profile::ssh {
  service { '/etc/ssh/sshd_config':
    ensure => running,
    enable => true,
  }
}
