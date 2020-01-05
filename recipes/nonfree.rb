#
# Cookbook:: rpm-fusion
# Recipe:: nonfree
#
# Copyright:: 2020, John Losito, All Rights Reserved.

rpm_name = "rpmfusion-nonfree-release-#{node['platform_version']}.noarch.rpm"
rpm_target = "#{Chef::Config[:file_cache_path]}/#{rpm_name}"

remote_file rpm_target do
  source "https://download1.rpmfusion.org/nonfree/fedora/#{rpm_name}"
  action :create
end

rpm_package rpm_name do
  source rpm_target
  action :install
end
