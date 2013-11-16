#
# Cookbook Name:: php
# Recipe:: default
#
# Copyright 2013, m3y
#
# All rights reserved - Do Not Redistribute
#

package 'php5-dev'
package 'php5-cli'
package 'php5-xdebug'
package 'php5-apc'
package 'php5-curl'
package 'php5-mcrypt'

timezonefile = File.join('/etc/php5/conf.d/', 'timezone.ini')
template timezonefile do
    source "timezone.ini"
    mode "0644"
end

shortopentagfile = File.join('/etc/php5/conf.d/', 'shortopentag.ini')
template shortopentagfile do
    source 'shortopentag.ini'
    mode '0644'
end
