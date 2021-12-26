require 'awspec'

service_name = `cd test/awspec/ && terraform output name`.strip.delete('"')

describe vpc(service_name.to_s) do
  it { should exist }
end