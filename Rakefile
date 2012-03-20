require "bundler/gem_tasks"
require "rake/testtask"

namespace :test do
  desc "Run All The Tests"
  task :all => [ "test:integration" , "test:spec" , "test:unit" ]

  desc "Run The Integration Spec Tests"
  Rake::TestTask.new( :integration ) do | t |
    t.libs    = [ "test" ]
    t.pattern = "test/integration/**/*_spec.rb"
    t.verbose = true
  end

  desc "Run The Spec Tests"
  Rake::TestTask.new( :spec ) do | t |
    t.libs    = [ "test" ]
    t.pattern = "test/spec/**/*_spec.rb"
    t.verbose = true
  end

  desc "Run The Unit Tests"
  Rake::TestTask.new( :unit ) do | t |
    t.libs    = [ "test" ]
    t.pattern = "test/unit/**/*_test.rb"
    t.verbose = true
  end
end

desc "Run All The Tests"
task :test    => "test:all"
task :default => :test
