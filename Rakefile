task default: ['test:all']

namespace :test do
  desc 'Run the units test'
  task :units do
    ruby 'test/units/linear_test.rb'
  end

  desc 'Run the functionals test'
  task :functionals do
    ruby 'test/functionals/linear_test.rb'
  end

  desc 'Do all tasks'
  task :all do
    Dir.glob('./test/**/*_test.rb').each { |t| require t }
  end
end
