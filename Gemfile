source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'rails', '~> 5.2', '>= 5.2.3'

gem 'pg', '~> 1.1', '>= 1.1.4'
gem 'puma', '~> 3.11'
# TODO: remove this gem
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'bootsnap', '>= 1.4.2', require: false
gem "slim-rails"


#front-end gems
gem "bootstrap-sass", "~> 3.3.7"
gem "bootswatch-rails"
gem 'sass-rails', "~> 5.0"

#views
gem 'simple_form'

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

group :development, :test do
  gem 'rubocop'
end
