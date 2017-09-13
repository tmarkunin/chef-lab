# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "tmarkunin"
client_key               "#{current_dir}/tmarkunin.pem"
chef_server_url          "https://chef-server.gturp1auaftuldm03x2e0ufcle.dx.internal.cloudapp.net/organizations/cheflab"
cookbook_path            ["#{current_dir}/../cookbooks"]
