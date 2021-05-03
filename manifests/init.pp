class sngrep {
  case $::operatingsystem {
    'CentOS': {
      include repos::irontec
      package {'sngrep':
        ensure => 'installed',
        require => Exec['install_irontec_key']
      }
    }
    'Debian','Ubuntu': {
      package {'sngrep':
        ensure	=> 'installed',
      }
    }
  }
}
