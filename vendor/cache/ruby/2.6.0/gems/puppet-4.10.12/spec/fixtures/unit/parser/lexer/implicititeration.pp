# $Id$

$files = ["/tmp/iterationatest", "/tmp/iterationbtest"]

file { $files: ensure => file, mode => '0755' }

file { ["/tmp/iterationctest", "/tmp/iterationdtest"]:
    ensure => file,
    mode => '0755'
}

file {
    ["/tmp/iterationetest", "/tmp/iterationftest"]: ensure => file, mode => '0755';
    ["/tmp/iterationgtest", "/tmp/iterationhtest"]: ensure => file, mode => '0755';
}
