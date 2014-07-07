class vnstat (
  $version              = $::vnstat::params::version,
  $package_name         = $::vnstat::params::package_name,
  $vnstat_db_dir        = $::vnstat::params::vnstat_db_dir,
  $vnstat_interface     = $::vnstat::params::vnstat_interface,
  $vnstat_interfaces    = $::vnstat::params::vnstat_interfaces,
) inherits vnstat::params {

  class { '::vnstat::install': } ->
  class { '::vnstat::config': } ->
  class { '::vnstat::setup': } ->
  class { '::vnstat::cron': } ->
  Class['vnstat']
}
