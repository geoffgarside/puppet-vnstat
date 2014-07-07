class vnstat::config {

  $vnstat_interface     = $::vnstat::vnstat_interface
  $vnstat_db_dir        = $::vnstat::vnstat_db_dir

  file { $vnstat_db_dir:
    ensure => directory,
    mode   => '0755',
    owner  => '0',
    group  => '0',
  }

  file { $::vnstat::params::vnstat_conf:
    ensure  => file,
    mode    => '0600',
    owner   => '0',
    group   => '0',
    content => template('vnstat/vnstat.conf.erb'),
  }
}
