# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'zwemwater'
require 'rake/testtask'

task :build do
  system "gem build zwemwater.gemspec"
end

task :install do
  system "gem install zwemwater-#{Zwemwater::VERSION}.gem --dev"
end

Rake::TestTask.new do |t|
  t.libs += ['lib/zwemwater', 'spec']
  t.pattern = 'spec/**/*_spec.rb'
  t.verbose = true
end
 
task :default => :test