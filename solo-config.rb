chef_base = '/tmp/chef/recipes/'

chef_cookbook_dirs = []
Dir.entries(chef_base).each do |d|
  next if d[0,1] == '.'
  chef_cookbook_dirs << '%s%s' % [ chef_base, d ]
end

cookbook_path    chef_cookbook_dirs
file_cache_path  chef_base
file_store_path  chef_base
log_level        :info
log_location     STDOUT
ssl_verify_mode  :verify_none
