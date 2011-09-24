source "http://rubygems.org"

gem "rails", "3.1.0"

# Bundle edge Rails instead:
# gem "rails",     :git => "git://github.com/rails/rails.git"

# Use unicorn as the web server
gem "unicorn"

# Deploy with Capistrano
gem "capistrano"

# To use debugger
# gem "ruby-debug19", :require => "ruby-debug"

gem "pg"

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem "sass-rails", "  ~> 3.1.0"
  gem "coffee-rails", "~> 3.1.0"
  gem "uglifier"
end

gem "compass", :git => "git://github.com/chriseppstein/compass.git", :branch => "rails31"
gem "haml-rails"

gem "jquery-rails"
gem "rails-backbone"

gem "flash_messages_helper"
gem "country-select"
gem "rails_config"
gem "rails_admin", :git => "git://github.com/sferik/rails_admin.git"
gem "high_voltage"

gem "squeel"
gem "statistics"
gem "has_scope"
gem "state_machine"
gem "inherited_resources"


gem "sanitize"
gem "redcarpet"

gem "devise"
gem "devise_invitable"
gem "cancan"
gem "role_model"
gem "sentient_user"

gem "meta-tags", :require => "meta_tags"
gem "simple_form"
gem "simple-navigation"
gem "acts-as-taggable-on"

gem "easy_captcha"
gem "rmagick", :require => false
gem "carrierwave"


gem "simple_form"
gem "simple-navigation"
gem "kaminari"

group :development do
  gem "awesome_print"
  gem "lorem"
  gem "erb2haml"
  gem "letter_opener"
end

group :test, :development do
  gem "rspec", ">= 2.6.0"
  gem "rspec-rails", ">= 2.6.0"
  gem "rr"
  gem "cucumber"
  gem "cucumber-rails"
  gem "factory_girl_rails"
  gem "shoulda"
  gem "capybara"
  gem "database_cleaner"
  gem "rb-fsevent", :require => false if RUBY_PLATFORM =~ /darwin/i
  gem "guard-rspec"
end