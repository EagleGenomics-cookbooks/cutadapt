#
# Cookbook Name:: cutadapt
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
##########################################################
apt_update if node['platform_family'] == 'debian'

build_essential 'install essential' do
  action :install
end

# Install pyenv globally
pyenv_system_install 'system'

# This is the current version on ubuntu 18.04
python_version = '3.6.7'

# isntall python version (already installed on ubuntu 18.04)
pyenv_python python_version

# switch global python version to be used
pyenv_global python_version

# Fix for https://github.com/pyenv/pyenv/issues/1157
directory '/usr/local/pyenv/shims/' do
  mode '0777'
  action :create
end

pyenv_pip 'cutadapt' do
  version node['cutadapt']['version']
end

magic_shell_environment 'CUTADAPT_VERSION' do
  value node['cutadapt']['version']
end
