#
# Cookbook:: test-cookbook
# Recipe:: demo-recipe
#
# Copyright:: 2020, The Authors, All Rights Reserved.
package 'tree' do
  action :install
end

file '/myfile2' do
  content 'this is mylllllll second file'
  action :create
  owner 'root'
  group 'root'
end
%w(httpd mariadb-server unzip git vim).each do |p|
  package p do
    action :install
  end
end 
%w(user1 user2 user3 user4).each do |p|
  user p do
    action :create
  end
end
