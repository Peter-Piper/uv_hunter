source 'https://rubygems.org'
ruby '1.9.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.3'

group :production do
  gem 'rails_12factor' # needed by heroku
end

# Use postgresql as the database for Active Record
gem 'pg'

gem 'devise', '~> 3.2.2'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'
gem 'foundation-rails', '5.2.1'  # foundation for rails
gem 'foundation_rails_helper' # pretty 'fields-with-errors'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

gem 'kaminari', '~> 0.15.1' # scope-based pagination

group :development, :test do
  gem 'rspec-rails', '~> 3.0.0.beta'
  gem 'annotate', '>= 2.5.0'
  gem 'quiet_assets', '>= 1.0.2'
  gem 'pry'
  gem 'pry-rails'
  gem 'pry-debugger'
end

group :test do
  gem 'capybara'
  gem 'shoulda-matchers', '~> 2.5'
  gem 'ZenTest', '4.9.0'
  gem 'factory_girl_rails', '>= 4.4.1', require: false
  gem 'database_cleaner', require: false
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'sprockets_better_errors'
  gem 'rack-mini-profiler'
end
