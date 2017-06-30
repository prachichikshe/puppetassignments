
#3. Write a script which do the installation of tomcat server and deploy a war file through it.

#1)puppet module install puppetlabs-java

#2)vi /etc/puppet/manifests/tomcat.pp

#3)puppet module install puppetlabs-tomcat
 
tomcat::install { '/opt/tomcat':
  source_url => 'https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.0.M1/bin/apache-tomcat-9.0.0.M1.tar.gz',
}
tomcat::instance { 'default':
  catalina_home => '/opt/tomcat',
}

tomcat::war { 'warfile.war':
  catalina_base => '/opt/tomcat',
  war_source    => '/opt/tomcat/webapps/docs/appdev/sample/warfile.war',
}
