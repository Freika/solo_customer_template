# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby File.read('.ruby-version').strip

gem 'bootsnap', require: false
gem 'devise'
gem 'importmap-rails'
gem 'pg'
gem 'puma'
gem 'pundit'
gem 'rails'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'tailwindcss-rails'
gem 'sidekiq'
gem 'sidekiq-cron'
gem 'turbo-rails'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'ffaker'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'rspec-rails'
end

group :test do
  gem 'shoulda-matchers'
  gem 'simplecov'
end

group :development do
  gem 'foreman'
  gem 'rubocop-rails', require: false
end

# Use Redis for Action Cable
gem 'redis'
