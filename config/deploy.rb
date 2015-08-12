# config valid only for current version of Capistrano


set :application, "datafeud"
set :repo_url ,  "git@github.com:wphogan/datafeud.git"
server 'staging.datafeud.org', user: 'datactr', roles: %w{web app}
set :tmp_dir, "/home/datactr/tmp"
set :deploy_to, "/home/datactr/var/www"
set :default_stage, "production"
namespace :deploy do

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

end
