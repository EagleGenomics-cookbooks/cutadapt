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

execute 'rpm -ivh http://dl.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm' do
end

package ['python-pip'] do
  action :install
end

execute "pip install cutadapt==#{node['cutadapt']['version']}" do
end

##########################################################
##########################################################
