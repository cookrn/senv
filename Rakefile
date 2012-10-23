%w(
  bundler/gem_tasks
  rake/testtask
  cucumber/rake/task
).each do | lib |
  require lib
end

namespace :test do
  desc 'Run ALL The Tests'
  task :all => [ 'test:acceptance' ]

  desc 'Run The Acceptance Tests'
  Cucumber::Rake::Task.new :acceptance do | t |
    t.cucumber_opts = %w{--format progress}
  end
end

desc 'Run All The Tests'
task :test    => 'test:all'
task :default => :test
