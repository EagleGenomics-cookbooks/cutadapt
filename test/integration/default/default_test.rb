
describe command('which cutadapt') do
  its(:exit_status) { should eq 0 }
end

describe command('cutadapt --version') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should include('1.9.1') }
end
