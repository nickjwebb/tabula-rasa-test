chef_gem "rest-client" do
  action :install
end

# Grab custom postgres package & install
s3_file "/tmp/tabula-rasa-issue-6-test.tar.gz" do
  remote_path "/tabula-rasa-issue-6-test.tar.gz"
  bucket "shlomo-test"
  owner "root"
  group "root"
  mode "0644"
  not_if "test -f /tmp/tabula-rasa-issue-6-test.tar.gz"
end
