#
# Cookbook:: test-cookbook
# Recipe:: attribute
#
# Copyright:: 2021, The Authors, All Rights Reserved.

file '/home/ubuntu/info' do
  content " this is to get attributes
  HOSTNAME: #{node['hostname']}
  IPADDRESS: #{node['ipaddress']}
  CPU: #{node['cpu']['0']['mhz']}
  MEMORY: #{node['memory']['total']}"
  owner 'root'
  group 'root'
action :create
end
