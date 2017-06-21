
#1. Write a script which will demonstrate File Creation and Deletion.

    #creation of file
    file { '/var/tmp/file1.txt':
      ensure  => 'file',   
      owner   => 'root',    
      group   => 'root',   
      mode    => '755', 
      content => 'file is created here named file1...', 
     }
 # o/p:-
     #file is created here.
 -------------------------------------------------------------------------------------------------------------------------------------------------
     #deletion of file
     
     file { "/var/tmp/file1.txt":
       ensure  => 'absent',
       content => 'file has been deleted here named file1...',
      }
