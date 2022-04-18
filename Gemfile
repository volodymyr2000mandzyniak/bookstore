source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

gem 'rails', '~> 6.1.5'
gem 'puma', '~> 5.0'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'

gem 'devise'
gem 'ancestry'
gem 'will_paginate', '~> 3.3'
gem 'trix-rails', require: 'trix'
gem 'carrierwave', '~> 2.0'
gem "mini_magick"

gem 'bootstrap', '~> 5.1.3'
gem 'jquery-rails'
gem 'bootsnap', '>= 1.4.4', require: false

group :development do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]

  # gem "letter_opener"
  gem 'web-console', '>= 4.1.0'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  gem 'spring'
  gem 'sqlite3', '~> 1.4'
end

group :test do
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver', '>= 4.0.0.rc1'
  gem 'webdrivers'
end

group :production do
   gem 'pg', '~> 1.3', '>= 1.3.5'
   gem 'rails_12factor'

 end


gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
