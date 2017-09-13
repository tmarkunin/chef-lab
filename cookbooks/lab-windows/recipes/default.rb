#
# Cookbook:: lab-windows
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
windows_feature 'Telnet-Client' do
    action :install
    all true
    provider :windows_feature_powershell
end
