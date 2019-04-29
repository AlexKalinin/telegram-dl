namespace :db do
  desc 'console'
  task :console do
    binding.pry
  end
end