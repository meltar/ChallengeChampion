source 'https://rubygems.org'
ruby '2.2.2'

# Rails
gem 'rails', '4.2.1'

# Postgres
gem 'pg'

# Assets
gem 'bootstrap-sass', '2.3.2.0'
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'

# Authentication
gem "oauth"
gem "omniauth-twitter"

# Responders
gem 'responders'

# Pagination
gem 'will_paginate', '3.0.4'
gem 'bootstrap-will_paginate', '0.0.9'

# Turbolinks
gem 'turbolinks'

# JSON
gem 'jbuilder', '~> 1.2'

# Giver user.show a friendly URL
gem 'friendly_id', "~> 5.0.0"

# Display emoji
gem 'gemoji'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :development, :test do
	gem 'dotenv-rails'
	gem 'rspec-rails', '~>2.14.0'
	gem 'pry'
	gem 'faker', '1.2.0'
end

group :test do
	gem 'factory_girl_rails', '4.2.1'
	gem 'capybara', '2.1.0'
	gem 'selenium-webdriver', '2.35.1'
	gem 'simplecov', :require => false, :group => :test
	gem 'database_cleaner'
	gem 'rake'
end
