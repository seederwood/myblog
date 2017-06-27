source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'bootstrap-sass', '~> 3.3', '>= 3.3.7'
gem 'bourbon', '~> 4.3', '>= 4.3.4'
gem 'coffee-rails', '~> 4.2'
gem 'devise', '~> 4.3'
gem 'gritter', '~> 1.2'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails', '~> 4.3', '>= 4.3.1'
gem 'paperclip', '~> 5.1'
gem 'puma', '~> 3.7'
gem 'pygments.rb', '~> 1.1', '>= 1.1.2'
gem 'rails', '~> 5.1.1'
gem 'redcarpet', '~> 3.4'
gem 'sass-rails', '~> 5.0'
gem 'simple_form', '~> 3.5'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
  gem 'sqlite3'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :production do
  gem 'pg'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
