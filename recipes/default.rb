#
# Cookbook Name:: locales
# Recipe:: default
#
# Copyright 2011, Alastair Brunton
#
# MIT
#


execute "Generate the locale" do
  user "root"
  command "/usr/sbin/locale-gen #{node[:locales][:server_locale]}"
end

execute "Set the locale." do
  user "root"
  command "/usr/sbin/update-locale LANG=#{node[:locales][:server_locale]}"
end


execute "Set the local time zone for the server." do
  user "root"
  command "ln -sf /usr/share/zoneinfo/#{node[:locales][:server_time_zone]} /etc/localtime"
end


