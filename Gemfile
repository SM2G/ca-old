source 'https://rubygems.org'

gem 'rails',                '4.2.0'
gem 'pg',                   '~> 0.18.1'

gem 'bcrypt-ruby' ,         '~> 3.1.5' # Use ActiveModel has_secure_password
gem 'config',               '~> 1.0.0'
gem 'devise',               '~> 3.5.2'
gem 'devise-i18n',          '~> 0.12.1'
gem 'enumerize',            '~> 1.1.0'
gem 'figaro',               '~> 1.1.1'
gem 'foreman',              '~> 0.78.0'
gem 'high_voltage',         '~> 2.4.0'
gem 'paperclip',            '~> 4.2.1'
gem 'rails-i18n',           '~> 4.0.6'
gem 'redis-namespace',      '~> 1.5.2'
gem 'responders',           '~> 2.0'
gem 'sidekiq',              '~> 4.0.1'
gem 'sidekiq-scheduler',    '~> 2.0.0'
gem 'simple_form',          '~> 3.2.0'
gem 'sinatra',              '~> 1.4.6', require: false # For Sidekiq

## ASSETS
## ==========
gem 'rack-cache',           '~> 1.5.1'      # Assets caching
gem 'coffee-rails',         '~> 4.1.0'      # Use CoffeeScript for .coffee assets and views
gem 'jbuilder',             '~> 2.0'        # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jquery-rails'                          # Use jquery as the JavaScript library
gem 'less',                 '2.6.0'
gem 'less-rails',           '2.7.0'
gem 'less-rails-bootstrap', '3.3.5.0'
gem 'sass-rails',           '~> 5.0'        # Use SCSS for stylesheets
gem 'sprockets',            '3.2.0'
gem 'therubyracer'
gem 'turbolinks'                            # Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'twitter-bootswatch-rails', '~> 3.3.2'  # twitter bootstrap css & javascript toolkit
gem 'twitter-bootswatch-rails-helpers'      # twitter bootstrap helpers gem, e.g., alerts etc...
gem 'uglifier',            '>= 1.3.0'       # Use Uglifier as compressor for JavaScript assets

## PROD
## ==========
group :production do
  gem 'puma',           '2.11.1'
  gem 'rails_12factor', '0.0.2'
end

## DEVELOPMENT, TEST
## ====================
group :development, :test do
  gem "better_errors"
  gem 'byebug',      '3.4.0'
  gem 'quiet_assets'
  gem 'spring',      '~> 1.3'
  gem 'test_helper'
  gem 'web-console', '~> 2.0'
  gem 'rails-erd'
end
