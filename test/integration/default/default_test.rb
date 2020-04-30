# # encoding: utf-8

# Inspec test for recipe cutadapt::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe command('which pigz') do
  its(:exit_status) { should eq 0 }
end

# we just need to check that pigz is working, version does not matter here
describe command('pigz -h') do
  its(:exit_status) { should eq 0 }
end

describe command('which cutadapt') do
  its(:exit_status) { should eq 0 }
end

describe command('cutadapt --version') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should include('2.9') }
end
