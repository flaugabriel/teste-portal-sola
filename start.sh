gem install bundler
bundle update
RAILS_ENV=production bundle exec rails assets:precompile
RAILS_ENV=production bundle exec rails webpacker:compile
nohup rails s -e  production &