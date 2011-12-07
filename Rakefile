require "rake/testtask"
require "bundler"
Bundler::GemHelper.install_tasks

task :default => :test

Rake::TestTask.new do |t|
  t.libs << "test"
  t.warning = false
end
