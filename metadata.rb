name 'tabula-rasa-test'
description 'Test to reproduce issue #6'
long_description 'xxx'
license 'Apache2.0'
version "1.0.0"
supports "amazon"
recipe "tabula-rasa-test::breaks", "break Tabula Rasa with chef_gem"
provides "tabula-rasa-test::breaks"
maintainer 'Nick Webb'
maintainer_email 'nickw@redwireservices.com'
depends "s3_file", "~> 2.5.1"
