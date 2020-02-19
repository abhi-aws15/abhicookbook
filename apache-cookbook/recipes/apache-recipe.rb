#
# Cookbook:: apache-cookbook
# Recipe:: apache-recipe
#
# Copyright:: 2020, The Authors, All Rights Reserved.
package 'httpd' do
  action :install
end

file 'var/www/html/index.html' do
  content 'hello sai!! good morning!!welcome to chef world.test'
  action :create
end

service 'httpd' do
  action [ :enable, :start ]
end
