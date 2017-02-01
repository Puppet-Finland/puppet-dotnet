# == Class: dotnet::install
#
# This class installs dotnet
#
class dotnet::install
(
    $ensure

) inherits dotnet::params
{
    package { $::dotnet::params::package_name:
        ensure   => $ensure,
        provider => $::dotnet::params::package_provider,
    }
}
