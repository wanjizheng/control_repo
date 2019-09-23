class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDJF8y840UsRa5qL1ZyHNplRE0mq6fDuN/rKbNcDyl9RMf1lcHdZzGAkpfR4GwkmCfcqmqzjc6j8D62xqKRy+yrYL2qB3ehwvBrMTtbv317tcOw4F/SOnEAL5EAyaZ2gjtrUqfPrAFVyx6TNCudaoeot2hjwYDEn35IXjs6F2SpYh5qB0t00WlPNb/tDzaVNyGuWG11enaI+O/mAvF7sppX3QFRIKhFFxIqztC7BRLuBNc1HiSo2CWXhwLwfxXfjeDvmB/MAdUMIEqykwTQdBGzCfn1s/Da8wFquarMX7w6bi9BF/t/nmxqGNhxC3DImpoOlApGXF4lFeU+LtQ45fk3',
  }  
}
