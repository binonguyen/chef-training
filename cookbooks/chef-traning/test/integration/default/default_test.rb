# # encoding: utf-8

# Inspec test for recipe chef-traning::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root'), :skip do
    it { should exist }
  end
end

# This is an example test, replace it with your own test.
describe port(80), :skip do
  it { should_not be_listening }
end
describe package('nano') do
  it { should be_installed }
end
describe file('/var/website') do
  it { should exist }
end
describe file('/var/old-website') do
  it { should_not exist }
end
describe file('/var/website/directions.txt') do
  its('content') { should eq 'website goes here' }
  it { should exist }
end
describe file('/var/website/builder.txt') do
  it { should exist }
end
describe file('/var/website/logo.jpg') do
  it { should exist }
end
describe file('/var/website/architect') do
  it { should exist }
end
describe package('git') do
  it { should be_installed }
end
