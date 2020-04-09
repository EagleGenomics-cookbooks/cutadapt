# # encoding: utf-8

# Inspec test for recipe cutadapt::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/


describe command('which cutadapt') do
  its(:exit_status) { should eq 0 }
end

describe command('cutadapt --version') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should include('1.9.1') }
end
