define vnstat::setup_interface(
  $interface = $title,
) {

  $db_dir = $::vnstat::vnstat_db_dir
  $binary = $::vnstat::params::vnstat_bin

  exec { "vnstat setup ${interface}":
    command => "${binary} -u -i ${interface}",
    creates => "${db_dir}/${interface}",
    user    => 'root',
    require => Class['vnstat::config'],
  }
}
