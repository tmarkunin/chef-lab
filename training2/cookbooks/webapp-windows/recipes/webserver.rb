#
# Cookbook:: webapp-windows
# Recipe:: webserver
#
# Copyright:: 2017, The Authors, All Rights Reserved.
dsc_script 'Web-Server' do
    code <<-EOH
    WindowsFeature InstallWebServer{
        Name = "Web-Server"
        Ensure = "Present"
    }
    EOH
  end
  
  #Install ASP.NET 4.5
  dsc_script 'Web-Asp-Net45' do
      code <<-EOH
      WindowsFeature InstallAspDotNet45{
          Name = "Web-Asp-Net45"
          Ensure = "Present"
      }
      EOH
    end
  
   #Install IIS Management Console
  dsc_script 'Wem-Mgmt-Console' do
      code <<-EOH
      WindowsFeature InstallIISConsole {
          Name = "Web-Mgmt-Console"
          Ensure = "Present"
      }
      EOH
    end