namespace :telegram do
  desc 'Download messages from telegram group'
  task :download_messages do
    GROUP = 'my_group'
    LIMIT_MB = '50'
    puts "Downloading messages from #{GROUP}, limit: #{LIMIT_MB}mb..."

    # IMPLEMENTATION CODE HERE

    puts "Done."
  end
end