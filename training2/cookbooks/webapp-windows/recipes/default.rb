#
# Cookbook:: webapp-windows
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#Install IIS role
include_recipe 'webapp-windows::webserver'
#include_recipe 'webapp-windows::database'