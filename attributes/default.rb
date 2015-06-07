default['ant']['version']        = '1.9.2'
default['ant']['home']           = '/usr/local/ant'
default['ant']['url']            = "http://archive.apache.org/dist/ant/binaries/apache-ant-#{node['ant']['version']}-bin.tar.gz"
default['ant']['checksum']       = 'cab1b8754e5f1f2aa869e2ba603903ae5e81a585de4eafd00f173531a11b5a45'
default['ant']['install_method'] = "source"
default['ant']['libraries']      = {"ant-contrib" => "http://search.maven.org/remotecontent?filepath=ant-contrib/ant-contrib/1.0b3/ant-contrib-1.0b3.jar"}
# phpunit
default['phpunit']['checksum'] = 'f44b9ede13261bc742d8cf6453771ef2ee7d94bf12ea2bcc9bad69266bb6ffad'
default['phpunit']['path'] = '/usr/local/bin'
default['phpunit']['basename'] = 'phpunit-'
default['phpunit']['version'] = '4.6.9'
default['phpunit']['extensionname'] = '.phar'
default[:tile_web][:s3packagebucket] = 'packages.rwsnw.com'
