user { 'dojo':
    ensure      => absent,
}

exec { 'apt-get update':
    command     => '/usr/bin/apt-get update',
}

package { [ 'tree', 'wget', 'git', 'unzip', 'ntp' ]:
    ensure      => present,
}

file { '/etc/motd':
    ensure      => present,
    owner       => 'root',
    group       => 'root',
    mode        => '0644',
    path        => '/etc/motd',
    content     => '

        Property of XYZ

    ',
}

service { 'ntp':
    ensure      => running,
    enable      => true,
}
