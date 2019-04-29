gem install bundler
bundle install --jobs=10

cp config/application.yml.example config/application.yml
rake db:migrate

rake telegram:download_messages

rake db:console
