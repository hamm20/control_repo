node default {
}
node 'master.puppet.vm' {
  include role::master_server
  file { '/root/README':
    ensure => file,
    content => "Welcome to ${fqdn}\n",
  }
}


node /^web/ {
  include role::app_server
  file { '/root/ipinfo':
    ensure => file,
    content => $ip,
  }
}

node /^db/ {
  include role::db_server
  file { '/root/ipinfo':
    ensure => file,
    content => $ip,
  }

}
