name 'webapp-windows'
maintainer 'The Authors'
maintainer_email 'you@example.com'
license 'All Rights Reserved'
description 'Installs/Configures webapp-windows'
long_description 'Installs/Configures webapp-windows'
version '0.1.11'
chef_version '>= 12.1' if respond_to?(:chef_version)
depends 'sql_server', '~>5.1.1'
depends 'iis', '~>6.0.0'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/webapp-windows/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/webapp-windows'
