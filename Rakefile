require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs.push "test"
  t.test_files = FileList['test/**/*.rb']
  t.verbose = false
end

task :default => :test