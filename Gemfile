source 'http://rubygems.org'

gem 'sinatra'
gem 'activerecord', '~> 4.2', '>= 4.2.6', :require => 'active_record'
gem 'sinatra-activerecord', :require => 'sinatra/activerecord'
gem 'rake'
gem 'require_all'

#gem 'sqlite3', '~> 1.3.6'
#gem "pg"    # for Postgres

group :production do 
gem 'pg', '~> 0.18.4'
end

group :development do
gem 'sqlite3', '~> 1.3.6'
end

gem 'thin'
gem 'shotgun'
gem 'pry'
gem 'bcrypt'
gem 'tux'
gem 'pdf-reader'
gem 'pdf-reader-turtletext'
require 'open-uri'

group :test do
  gem 'rspec'
  gem 'capybara'
  gem 'rack-test'
end
