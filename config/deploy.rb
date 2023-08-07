# config valid for current version and patch releases of Capistrano
lock "~> 3.17.3"

set :application, "sample"
set :repo_url, "https://github.com/akshaychavan123/akshay_demo.git"

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, "/home/ubuntu/sample"

# Default value for :linked_files is []
# append :linked_files, "config/database.yml", 'config/master.key'

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "tmp/webpacker", "public/system", "vendor", "storage"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure

# SSH Options
set :ssh_options, {
  user: "ubuntu",
  keys: %w(/home/ubuntu/.ssh/id_rsa),
  forward_agent: true,
  auth_methods: %w(publickey),
  connect_timeout: 60 # Increase the timeout value as needed
}

# RVM settings if applicable
# set :rvm_ruby_version, '2.6.3'

# Uncomment if using AWS CodeDeploy
# set :deploy_via, :remote_cache

# Custom tasks from lib/capistrano/tasks if defined
# Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }
