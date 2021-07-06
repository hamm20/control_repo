class profile::ssh_server {
  package { 'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => true,
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCydLHPvMcB3uhoosRBGWEvaf9O108D8Jj5dL/JGT00BXulpIVBtgfwwjsLKazEG2+Pxgvox/oCwxMAVT0bw4cMS
XTHU1KOyCZ5qs6pSD4Rvi/bkd12OQWTjAM6pKw0uR1ImSwNRBMo5XIKLnSP8ASyqGC077+JafcD0YBGEV4TZ9sPi4UAraKGNUvTQoPxziS8OQwPlO4aE1FiQdGeaX
mzqDhBEcsOid+o18UAIxc8ZUDRhu21k/pFhYHxIcKiqCg4mjKWgEryOozODTnfwss6jcTuJNJW2jNgGJ5zHGG2c60H0MOOA1SiFdxgoyOSe7saFrgluWwOnEC8ONX
FHTqx',
  }
}
