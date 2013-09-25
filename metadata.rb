name             'nilenso-cookbook'
maintainer       'YOUR_NAME'
maintainer_email 'YOUR_EMAIL'
license          'All rights reserved'
description      'Installs/Configures nilenso-cookbook'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends "apt", "~> 2.1.1"
depends "nginx", "~> 1.8.0"
depends "rbenv", "~> 1.6.5"
