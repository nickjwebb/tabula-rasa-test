name 'tabula-rasa-test'
description 'Test to reproduce issue #6'
long_description 'xxx'
license 'Proprietary - All Rights Reserved'
version "1.0.0"
supports "amazon"
recipe "tile-web::default", "Configure apache for cgis"
provides "tile-web::default"
maintainer 'Nick Webb'
maintainer_email 'nickw@redwireservices.com'
depends "s3_file", "~> 2.5.1"
