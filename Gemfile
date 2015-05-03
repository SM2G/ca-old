source 'https://rubygems.org'

# twitter bootstrap css & javascript toolkit
gem 'twitter-bootswatch-rails', '~> 3.3.2'
# twitter bootstrap helpers gem, e.g., alerts etc...
gem 'twitter-bootswatch-rails-helpers'
gem 'paperclip', '~> 4.2.1'
gem 'therubyracer'
gem 'less-rails-bootstrap'
gem 'rails', '4.2.0'
gem 'responders', '~> 2.0' 
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

## PROD
## ==========
group :production do
  #gem 'pg',             '0.17.1'
  gem 'rails_12factor', '0.0.2'
  gem 'puma',           '2.11.1'
end

## TEST
## ==========
group :development, :test do
  gem 'sqlite3',     '1.3.9'
  gem 'byebug',      '3.4.0'
  gem 'web-console', '~> 2.0'
  gem 'spring',      '~> 1.3'
  gem 'quiet_assets'
end
