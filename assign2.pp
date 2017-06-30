
#2. Write a script which will demonstrate User,Group Creation and Deletion.
#assign2.pp
user { 'prachi':
  ensure     => present,
  uid        => '507',
  home       => '/home/prachi',
  managehome => true,
}

#assignm2.pp
group { 'user_one':
     ensure => present,
     gid => 500,
  }

#assignd.pp
user { 'prachi':
     ensure => absent,
 }
group { 'user_one':
    ensure => 'absent'
 } 
