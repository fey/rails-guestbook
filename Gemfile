# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '~> 3.2.2'

gem 'bootsnap', require: false
gem 'cssbundling-rails'
# NOTE: должен быть в dev или test зависимостью. Испольузем для заполнения БД для демонстрации
gem 'faker'
gem 'flash_rails_messages'
gem 'jbuilder'
gem 'jsbundling-rails'
gem 'puma', '~> 6.3'
gem 'rails', '~> 7.0.6'
gem 'sentry-rails'
gem 'simple_form'
gem 'slim-rails'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'rubocop'
  gem 'rubocop-performance'
  gem 'rubocop-rails'
  gem 'slim_lint'
  gem 'solargraph'
  gem 'sqlite3'
end
group :development do
  gem 'html2slim'
  gem 'i18n-debug'
  gem 'ruby-lsp-rails'
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'minitest-power_assert'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

group :production do
  gem 'pg'
end
