#
# Cookbook Name:: tile-web
# Recipe:: phpunit
#
#
# Install phpunit via phar
#

# Grab phpunit phar file from s3, and link it to /usr/local/bin/phpunit
for phar in [ "#{node['phpunit']['basename']}#{node['phpunit']['version']}#{node['phpunit']['extensionname']}" ] do
  # Download
  s3_file "#{node['phpunit']['path']}/#{phar}" do
    remote_path "/#{phar}"
    bucket "#{node[:tile_web][:s3packagebucket]}"
    owner "root"
    group "root"
    mode "0755"
    not_if do ::File.exists?("#{node['phpunit']['path']}/#{phar}") end
  end

  link "#{node['phpunit']['path']}/phpunit" do
    to "#{node['phpunit']['path']}/#{phar}"
    action :create
  end
end
