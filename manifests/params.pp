#
# == Class: dotnet::params
#
# Defines some variables based on the operating system
#
class dotnet::params {

    case $::osfamily {
        'windows': {
            $package_name = 'dotnet4.5'
            $package_provider = 'chocolatey'
        }

        default: {
            fail("Unsupported OS: ${::osfamily}")
        }
    }
}
