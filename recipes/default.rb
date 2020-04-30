#
# Cookbook:: cutadapt
# Recipe:: default
#
# Copyright:: 2019, Eagle Genomics Ltd, All Rights Reserved.

# install pigz to allow parallel gzipping when using multiple cores
package 'pigz'

include_recipe 'python_setup'

pyenv_pip 'cutadapt' do
  version node['cutadapt']['version']
end

magic_shell_environment 'CUTADAPT_VERSION' do
  value node['cutadapt']['version']
end
