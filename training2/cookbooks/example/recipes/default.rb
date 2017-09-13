# frozen_string_literal: true
# This is a Chef recipe file. It can be used to specify resources which will
# apply configuration to a server.
include_recipe 'chef-client::default'

log "Welcome to Chef, #{node['example']['name']}!" do
  level :info
end

# For more information, see the documentation: https://docs.chef.io/recipes.html
