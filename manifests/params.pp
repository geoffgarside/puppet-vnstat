class vnstat::params {
  $version              = 'latest'
  $package_name         = 'vnstat'

  $vnstat_interfaces    = split($::interfaces, ',')
  $vnstat_interface     = $vnstat_interfaces[0]

  case $::osfamily {
    FreeBSD: {
      $vnstat_db_dir        = '/var/db/vnstat'
      $vnstat_conf          = '/usr/local/etc/vnstat.conf'
      $vnstat_bin           = '/usr/local/bin/vnstat'
    }
    default: {
      $vnstat_db_dir        = '/var/lib/vnstat'
      $vnstat_conf          = '/etc/vnstat.conf'
      $vnstat_bin           = '/usr/bin/vnstat'
    }
  }
}
