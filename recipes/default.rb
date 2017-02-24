#
# Cookbook Name:: cutadapt
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
##########################################################

include_recipe 'apt' if node['platform_family'] == 'debian'
include_recipe 'build-essential'
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
