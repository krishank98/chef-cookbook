#
# Cookbook:: test-cookbook
# Recipe:: apache
#
# Copyright:: 2021, The Authors, All Rights Reserved.
execute 'apache' do
  command ' sudo apt -y  update'
end
package 'apache2' do
  action :install
end

file '/var/www/html/index.html' do
  content 'this is our updated after role'
  action :create
end

service 'apache2' do
  action [:enable, :start]
end  

user 'krish' do
  action :create
end

group "chef" do
  action :create 
  members "krish"
  append true
end

