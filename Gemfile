source 'http://rubygems.org'

#ruby=1.9.3-p448
#ruby-gemset=hackety-hack.com

ruby '1.9.3'

gem 'rails', '3.1.11'
gem 'json'

gem 'hackety_hack-lessons', '~> 1.1', :require => 'hackety_hack/lessons'
gem 'prawn'
# Authentication gems for making features "omniauthable"

gem 'omniauth'
gem 'omniauth-linkedin'
gem 'omniauth-twitter', '1.0.0'
gem 'twitter'
gem 'fb_graph'
gem 'omniauth-facebook'
gem 'omniauth-github'
gem 'omniauth-google'
gem 'omniauth-yahoo'

gem 'haml-rails'
gem 'jquery-rails'
gem 'mongoid'
#gem 'mongo_mapper'
gem 'bson_ext'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "~> 3.1.1"   
  gem 'coffee-rails', "~> 3.1.1 " 
  gem 'uglifier'
end

gem "devise",     "~> 2.2.2"
gem 'mm-devise',  '~> 2.0'
gem 'cancan'

gem 'inherited_resources'
gem 'simple_form',    git: "https://github.com/bitzesty/bootstrap_form.git"
gem "semantic_menu",  git: "git://github.com/michaek/semantic_menu.git"

gem 'will_paginate'    # Pagination
gem 'rdiscount'   # Markdown

#gem 'web_video', '~> 1.2.0' 
#gem 'rshot'
#gem 'imgkit'
#gem 'Jekyll'
#gem 'and_preview'

group :development do
  gem 'binding_of_caller'
  gem 'better_errors'
  # Use unicorn as the web server
  gem 'unicorn'
end

group :development, :test do
 
  gem 'capybara'
  gem 'cucumber-rails', require: false
  gem 'fabrication'
  gem 'factory_girl_rails'
  gem "faker"
  gem 'rspec-rails'

 
  gem 'pry'
  gem 'sqlite3'
    
end

group :production do
  gem 'pg' # ugh heroku
end

group :test do
  gem "simplecov", :require => false
  gem "coveralls"
  gem "mocha"
  gem "database_cleaner"
  gem "launchy"
  gem 'mongoid-rspec'
end
