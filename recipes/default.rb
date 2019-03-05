#
# Cookbook Name:: cutadapt
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
##########################################################

include_recipe 'python_setup'

pyenv_pip 'cutadapt' do
  version node['cutadapt']['version']
end

magic_shell_environment 'CUTADAPT_VERSION' do
  value node['cutadapt']['version']
end
