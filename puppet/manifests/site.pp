node 'default'{
    file { '/tmp/test.txt':
        ensure => present,
        content => 'This is a test and only a test',
    }

#  include timezone

  class { 'timezone':
    timezone => 'Europe/Berlin',
  }
  include ntp
}
