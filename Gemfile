source 'https://rubygems.org'
ruby '2.4.3'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '5.1.4'
gem 'puma', '3.11.2'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '~> 4.1.5'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails', '4.3.1'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'devise'
gem 'bootstrap', '~> 4.0.0'
gem 'active_link_to'
gem 'pg', '0.20.0'
gem 'jquery-ui-rails'

group :development, :test do
  #gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'hirb'
  gem "better_errors"
  gem "binding_of_caller"
end

group :test do
  gem 'minitest', '5.10.3'
  gem 'capybara', '~> 2.13'
  gem 'poltergeist'
  gem 'simplecov', require: false
  gem 'minitest-reporters'
end

group :development do
  gem 'bullet'
  gem 'guard'
  gem 'guard-rails', require: false
  gem 'guard-livereload', '~> 2.5', require: false
  gem 'guard-bundler', require: false
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'rails_best_practices'
  #gem "wirble"
end

group :production do
end
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
