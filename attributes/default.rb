# Upstream project is: https://github.com/fisadev/fisa-vim-config.git
default['fisa-vim-config']['repo_url'] = 'https://github.com/trinitronx/fisa-vim-config.git' 

# a list of user hashes, each an isolated per-user fisa-vim-config installation
default['fisa-vim-config']['user_installs'] = []

# Set home dir root based on platform
case platform
when "redhat","centos","fedora", "amazon", "scientific"
#  node.set['fisa-vim-config']['install_pkgs']   = %w{git grep}
  default['fisa-vim-config']['user_home_root']  = '/home'
when "debian","ubuntu","suse"
#  node.set['fisa-vim-config']['install_pkgs']   = %w{git-core grep}
  default['fisa-vim-config']['user_home_root']  = '/home'
when "mac_os_x"
#  node.set['fisa-vim-config']['install_pkgs']   = %w{git}
  default['fisa-vim-config']['user_home_root']  = '/Users'
when "freebsd"
#  node.set['fisa-vim-config']['install_pkgs']   = %w{git}
  default['fisa-vim-config']['user_home_root']  = '/usr/home'
end
