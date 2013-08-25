#
# Cookbook Name:: php
# Recipe:: composer
#
# Copyright 2013, m3y
#
# All rights reserved - Do Not Redistribute
#

script "composer" do
    interpreter "bash"
    user "root"
    cwd "/tmp"
    code <<-EOH
        if [ ! -x /usr/local/bin/composer ]; then
            curl -s https://getcomposer.org/installer | php
            sudo mv /tmp/composer.phar /usr/local/bin/composer
        fi
    EOH
end
