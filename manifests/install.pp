class vnstat::install {

  package { 'vnstat':
    ensure => $::vnstat::version,
    name   => $::vnstat::package_name,
  }
}
