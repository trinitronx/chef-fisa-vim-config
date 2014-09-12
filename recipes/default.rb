#
# Cookbook Name:: fisa-vim-config
# Recipe:: default
#
# Copyright (C) 2014 James Cuzella [@trinitronx](https://github.com/trinitronx/)
#
# 
unless system('vim --version | grep +python')
  raise 'You need a version of vim compiled with python support!'
end

git "#{Chef::Config[:file_cache_path]}/app_name" do
  repository node['fisa-vim-config']['repo_url']
  revision node['fisa-vim-config']['git_revision']
  action :sync
  notifies :run, "link[install_vimrc]"
end

# TODO: Install vimrc
#link "" do
#  to ""
#end

## TODO: DO something similar to install or upgrade the fisa-vim-config install
