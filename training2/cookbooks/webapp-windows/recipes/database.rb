#
# Cookbook:: webapp-windows
# Recipe:: database
#
# Copyright:: 2017, The Authors, All Rights Reserved.


#Install SQLServer Express
include_recipe 'sql_server::server'

#Create and populate database

#create variable that points to script
create_database_script_path = 'c:\chef\create-database.sql'#win_friendly_path(File.join(Chef::Config[:file_cache_path], 'create-database.sql'))

#copy sql file
cookbook_file create_database_script_path do
  source 'create-database.sql'
  action :create
end

#

sqlps_module_path = ::File.join(ENV['programfiles(x86)'], 'Microsoft SQL Server\110\Tools\PowerShell\Modules\SQLPS')

#
powershell_script 'Initialize database' do
  code <<-EOH
    Import-Module "#{sqlps_module_path}"
    Invoke-Sqlcmd -InputFile #{create_database_script_path}
  EOH
#  guard_interpreter :powershell_script
 # only-if <<-EOH
  #  Import-Module "#{sqlps_module_path}"
   # (Invoke-Sqlcmd -Query "SELECT COUNT(*) AS count FROM sys.databases WHERE name = 'learnchef'").Count -eq 0
  #EOH
end

