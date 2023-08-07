server '172-31-9-102', user: 'ubuntu', roles: %w{web app db}
set :ssh_options, {
forward_agent: true,
auth_methods: %w[publickey],
keys: %w[/home/deep1.pem]
}