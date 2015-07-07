#
# Cookbook Name:: cutadapt
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
##########################################################

include_recipe 'build-essential'

##########################################################
# here for use by serverspec

magic_shell_environment 'CUTADAPT_VERSION' do
  value node['cutadapt']['version']
end

##########################################################

package ['python-devel'] do
  action :install
end

package ['python-pip'] do
  action :install
end

execute "pip install cutadapt==#{node['cutadapt']['version']}" do
end

##########################################################
##########################################################
