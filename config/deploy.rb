lock "~> 3.17.3"

set :application, "sample"
set :repo_url, "https://github.com/akshaychavan123/akshay_demo.git"

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, "/home/ubuntu/sample"

# SSH Options
set :ssh_options, {
  keys: [File.expand_path("~/.ssh/id_rsa")],
  forward_agent: true,
  auth_methods: ["publickey"],
  connect_timeout: 600 # Increase the timeout value as needed
}

# Deploy to the remote server using SSH
server "172.31.9.102", user: "ubuntu", roles: %w{app web}

# Number of releases to keep
set :keep_releases, 5
