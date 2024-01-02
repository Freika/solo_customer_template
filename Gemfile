# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.2'
gem 'bootsnap', require: false
gem 'devise', '4.9.2'
gem 'pg'
gem 'puma'
gem 'pundit'
gem 'rails', '7.1.1'
gem 'sprockets-rails'
gem 'strong_migrations'
gem 'stimulus-rails'
gem 'tailwindcss-rails'
gem 'turbo-rails'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem "importmap-rails"

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'ffaker'
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
gem "redis"
