require 'rake/testtask'
 
Rake::TestTask.new do |t|
  t.libs << 'lib/zwemwater'
  t.test_files = FileList['spec/*_spec.rb']
  t.verbose = true
end
 
task :default => :test