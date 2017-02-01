# == Class: dotnet
#
# This class sets up dotnet
#
# Currently functionality is limited to installing or removing the package.
#
# == Parameters
#
# [*manage*]
#   Whether to manage dotnet using Puppet. Valid values are true (default) 
#   and false.
# [*ensure*]
#   Status of dotnet. Valid values are 'present' (default) and 'absent'.
#
# == Authors
#
# Samuli Seppänen <samuli.seppanen@gmail.com>
#
# == License
#
# BSD-license. See file LICENSE for details.
#
class dotnet
(
    Boolean                  $manage = true,
    Enum['present','absent'] $ensure = 'present'

) inherits dotnet::params
{

if $manage {
    class { '::dotnet::install':
        ensure => $ensure,
    }
}
}
