# # encoding: utf-8

# Inspec test for recipe rpm-fusion::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe yum.repo('rpmfusion-free') do
  it { should exist }
  it { should be_enabled }
end

describe yum.repo('rpmfusion-nonfree') do
  it { should exist }
  it { should be_enabled }
end
