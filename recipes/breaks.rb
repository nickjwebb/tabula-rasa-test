chef_gem "rest-client" do
  action :install
end

# Grab custom postgres package & install
s3_file "/tmp/phpunit-4.6.9.phar" do
  remote_path "/phpunit-4.6.9.phar"
  bucket "packages.rwsnw.com"
  s3_url "https://s3-us-west-2.amazonaws.com/packages.rwsnw.com"
  owner "root"
  group "root"
  mode "0644"
end
