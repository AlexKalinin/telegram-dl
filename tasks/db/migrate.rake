namespace :db do
  desc 'Migrate database'
  task :migrate do
    puts 'Migrating database...'
    ActiveRecord::Migration.verbose = true
    ActiveRecord::Tasks::DatabaseTasks.migrate
    filename = File.join(App.root, 'db', "schema.rb")
    File.open(filename, "w:utf-8") do |file|
      ActiveRecord::SchemaDumper.dump(ActiveRecord::Base.connection, file)
    end
  end
end