server "172.31.9.102", user: "ubuntu", roles: %w{app web}

set :ssh_options, {
  keys: [File.expand_path("~/.ssh/id_rsa")],
  forward_agent: true,
  auth_methods: ["publickey"],
  # Uncomment the following line if you have issues with host verification
  # verify_host_key: :never
}

# Deploy to the remote server using SSH
set :deploy_to, "/home/ubuntu/sample"

# Use your repository URL
set :repo_url, "https://github.com/akshaychavan123/akshay_demo.git"

# Number of releases to keep
set :keep_releases, 5
