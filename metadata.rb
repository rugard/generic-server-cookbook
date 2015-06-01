name             'generic-server-cookbook'
maintainer       'RUGARD LLC'
maintainer_email 'vladimir@skubriev.ru'
license          'All rights reserved'
description      'Configure generic server'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'sudo',			'> 2.7.0'
depends 'openssh',		'= 1.4.0'
depends 'apt',			'= 2.7.0'
