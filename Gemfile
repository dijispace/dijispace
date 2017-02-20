source 'https://rubygems.org'

# git_source(:github) do |repo_name|
#   repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
#   "https://github.com/#{repo_name}.git"
# end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.1'
# Use pg as the database for Active Record
gem 'pg'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem 'ransack'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'carrierwave',             '0.11.2'

gem 'mini_magick',             '4.5.1'

gem 'fog',                     '1.38.0'

gem 'paystack'

gem 'bcrypt', '3.1.11'
#Use Bootstap
 #gem 'bootstrap-sass', '3.3.6'
 gem 'font-awesome-sass', '~> 4.6.2'
 #gem "font-awesome-rails", "~> 4.3"

 gem 'bootstrap-sass', '~> 3.3.6'
#gem 'sass-rails', '>= 3.2'
 gem 'awesome_print', require:"ap"
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
 gem "pikaday-gem"
 gem 'momentjs-rails'
 gem 'cloudinary' 

  
group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :test do
  gem 'rails-controller-testing', '0.1.1'
    gem 'minitest-reporters', '1.1.9'
    gem 'guard', '2.13.0'
    gem 'guard-minitest', '2.4.4'
end


group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem "better_errors"
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'meta_request'
end

group :production do
  gem 'pg'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
