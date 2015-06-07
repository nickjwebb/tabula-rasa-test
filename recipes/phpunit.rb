#
# Cookbook Name:: tile-web
# Recipe:: phpunit
#
#
# Install phpunit via phar

# Make sure php installed, use latest stable, 5.6
%w{php56}.each do |pkg|
  package pkg do
    action :upgrade
  end
end

# Confirm php support for Phar, good bet...
log '[phpunit] phar (PHP archive) not supported' do
  level :warn
  not_if "php -m | grep 'Phar'"
end

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
