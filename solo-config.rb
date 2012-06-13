chef_base = '/tmp/chef/'
chef_recipes = chef_base + 'recipes/'

chef_cookbook_dirs = []
Dir.entries(chef_recipes).each do |d|
  next if d[0,1] == '.'
  chef_cookbook_dirs << '%s%s' % [ chef_recipes, d ]
end

cookbook_path    chef_cookbook_dirs
role_path        chef_base + 'roles/'
file_cache_path  chef_recipes
file_store_path  chef_recipes
log_level        :info
log_location     STDOUT
ssl_verify_mode  :verify_none
