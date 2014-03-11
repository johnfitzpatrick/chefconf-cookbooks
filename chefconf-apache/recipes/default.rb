#
# Cookbook Name:: chefconf-apache
# Recipe:: default
#
# Copyright 2014, Chef Workshops, Inc.
#
# All rights reserved - Do Not Redistribute
#
package "httpd" do
  action :install
end

service "httpd" do
  action [ :enable, :start ]
end

 template "/var/www/html/index.html" do
   source "index.html.erb"
   mode "0644"
 end

# template "/var/www/html/#{myname}_index.html" do
#   source "#{myname}_index.html.erb"
#   mode "0644"
# end

# cookbook_file "/var/www/html/myname_index.html" do
#   source "myname_index.html"
#   mode "0644"
# end

include_recipe "events::site"