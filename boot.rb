require 'rake'
require 'pry'
require 'pry-byebug'
require 'pry-stack_explorer'
require 'pry-doc'
require 'active_record'
require 'active_support'

unless File.exists?('config/application.yml')
  puts "Please, create config/application.yml file from config/application.yml.example!"
  exit -1
end

class App
  class << self
    def root
      @@root ||= begin
        File.expand_path File.dirname(__FILE__)
      end
    end

    def config
      @@config ||= begin
        YAML.load_file(File.join(App.root, 'config/application.yml'))
      end
    end

    def migrations_dir
      File.join(App.root, 'db/migrate')
    end
  end
end

ActiveRecord::Base.establish_connection(App.config['db'])
