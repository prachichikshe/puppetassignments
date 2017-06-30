#4. Write a script which will configure a git and clone some repository through it.

#puppet module install puppetlabs-vcsrepo


vcsrepo { '/opt/puppet-docs':
  ensure   => present,
  provider => git,
  source   => 'https://github.com/prachichikshe/puppetassignments.git'
}
