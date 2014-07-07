class vnstat::setup {

  $vnstat_interfaces = $::vnstat::vnstat_interfaces
  vnstat::setup_interface { $vnstat_interfaces: }
}
