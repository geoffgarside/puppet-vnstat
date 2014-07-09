class vnstat::cron {

  $vnstat_bin    = $::vnstat::params::vnstat_bin
  $vnstat_db_dir = $::vnstat::vnstat_db_dir

  cron { 'vnstat update':
    ensure  => present,
    command => template('vnstat/vnstat.cron.erb'),
    user    => 'root',
    minute  => '*/5',
  }
}
