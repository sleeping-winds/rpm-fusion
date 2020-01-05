#
# Cookbook:: rpm-fusion
# Recipe:: free
#
# Copyright:: 2020, John Losito, All Rights Reserved.

rpm_name = "rpmfusion-free-release-#{node['platform_version']}.noarch.rpm"
rpm_target = "#{Chef::Config[:file_cache_path]}/#{rpm_name}"

remote_file rpm_target do
  source "https://download1.rpmfusion.org/free/fedora/#{rpm_name}"
  action :create
end

rpm_package rpm_name do
  source rpm_target
  action :install
end
