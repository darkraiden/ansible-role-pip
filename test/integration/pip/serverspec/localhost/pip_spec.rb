require 'serverspec'
set :backend, :exec

describe command('pip --version') do
    its(:stdout) { should match /^pip\s+10.0.1/ }
end
