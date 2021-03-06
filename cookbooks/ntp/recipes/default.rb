#
# Cookbook Name:: ntp
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
#
package 'ntp' do
  action :install
end

package 'ntpdate' do
  action :install
end

template "/etc/ntp.conf" do
  action :create
  source "ntp.erb"
  mode "0644"
  owner "root"
  group "root"
end
