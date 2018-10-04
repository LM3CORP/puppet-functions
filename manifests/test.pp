

$value=lookup('test_value')
$value2=lookup('test_value_2')
$value3=lookup('test_value_3')



notify{ $value: }
notify{ $value2: }

exec { 'show a command':
  command   => "echo groups=${value2}",
  path      => ['/bin','/usr/bin'],
  logoutput => true
}

exec { 'show a command 2':
  command   => "echo groups=${value3}",
  path      => ['/bin','/usr/bin'],
  logoutput => true
}

