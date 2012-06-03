#coding: utf-8
require "bundler/capistrano"

set :rvm_type, :user
set :rvm_ruby_string, 'ruby-1.9.3-p0'

set :application, "playweibo"
set :repository,  "git://github.com/sitoto/playweibo.git"
set :domain,	  "test.rntit.com"
set :branch,	  "master"
set :scm,	  "git"
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`
set :user,	  "app"
#set :runner,	  "app"
set :keep_release, 5

set :deploy_to,	  "/home/#{user}/www/#{application}"

role :web, domain           # Your HTTP server, Apache/etc
role :app, domain          # This may be the same as your `Web` server
role :db,  domain, :primary => true # This is where Rails migrations will run
#role :db,  "your slave db-server here"

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

load 'deploy/assets'

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end

set :default_environment, {
  'PATH' => "/home/app/.rvm/gems/ruby-1.9.3-p0/bin:/home/app/.rvm/gems/ruby-1.9.3-p0@global/bin:/home/app/.rvm/rubies/ruby-1.9.3-p0/bin:/home/app/.rvm/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games",
  'RUBY_VERSION' => 'ruby-1.9.3-p0',
  'GEM_HOME' => '/home/app/.rvm/gems/ruby-1.9.3-p0',
  'GEM_PATH' => '/home/app/.rvm/gems/ruby-1.9.3-p0:/home/app/.rvm/gems/ruby-1.9.3-p0@global'
}
