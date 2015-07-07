require 'serverspec'
require_relative './spec_helper'

# Required by serverspec
set :backend, :exec

describe command('which cutadapt') do
  its(:exit_status) { should eq 0 }
end

describe command('cutadapt -help') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should contain ENV['CUTADAPT_VERSION'] }
end
