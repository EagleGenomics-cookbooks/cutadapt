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

include_recipe 'python'

##########################################################
# here for use by serverspec

magic_shell_environment 'CUTADAPT_VERSION' do
  value node['cutadapt']['version']
end

##########################################################

python_pip 'cutadapt' do
  version node['cutadapt']['version']
end

##########################################################
##########################################################
