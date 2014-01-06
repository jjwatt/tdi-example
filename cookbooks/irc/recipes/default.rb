#
# Cookbook Name:: cookbook
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

user "tdi" do
  comment "User"
  shell "/bin/bash"
  home "/home/tdi"
  manage_home true
  action :create
end

# file ".tdi" do
#   content "bogus"
# end

# template "/home/tdi/.tdi" do
#   action :create
#   source 'bogus'
# end

package "irssi" do
  action :install
end

directory "/home/tdi" do
  owner "tdi"
  group "tdi"
  action :create
end

directory "/home/tdi/.irssi" do
  owner "tdi"
  group "tdi"
  action :create
end

cookbook_file "/home/tdi/.irssi/config" do
  source "irssi_config"
  owner "tdi"
  group "tdi"
end
