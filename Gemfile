source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"
gem "rails", "~> 7.0.3"
gem "sprockets-rails"
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "tzinfo-data"
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.6'
gem 'sassc-rails', '>= 2.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'font-awesome-rails'
gem 'bootstrap-sass-extras', '~> 0.0.2'
gem 'devise', '~> 4.8', '>= 4.8.1'
gem 'simple_form'
gem 'sendgrid'
gem 'will_paginate', '~> 3.1', '>= 3.1.6'
gem 'bootstrap-will_paginate', '~> 1.0'
gem "bootsnap", require: false

group :development, :test do
    gem "debug", platforms: %i[ mri mingw x64_mingw ]
    gem 'rspec-rails', '~> 4.0.2'
    gem 'factory_bot_rails', '~> 6.2'

end

group :development do
    gem "web-console"
    gem "sqlite3", "~> 1.4"
end

group :production do
    gem 'rails_12factor', '~> 0.0.3'
    gem 'pg', '~> 1.3', '>= 1.3.5'
end


group :test do
    gem "capybara"
    gem "selenium-webdriver"
    gem "webdrivers"
    gem 'database_cleaner'
end
