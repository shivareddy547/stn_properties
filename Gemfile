source "https://rubygems.org"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.1.0"
# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"
# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"
# Use the Puma web server [https://github.com/puma/puma]
gem "puma", ">= 5.0"
# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails"
# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"
# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"
# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"

gem "spree", "~> 4.7" # core and API
gem "spree_backend", "~> 4.7" # Admin panel (optional)
# gem 'spree_frontend', '~> 4.7' # Storefront (optional)
gem "spree_emails", "~> 4.7" # transactional emails (optional)
gem "spree_sample", "~> 4.7" # dummy data like products, taxons, etc (optional)
gem "spree_auth_devise", "~> 4.6" # Devise integration (optional)
gem "spree_gateway", "~> 3.11" # payment gateways eg. Stripe, Braintree (optional)
gem "spree_admin_roles_and_access", path: "spree_admin_roles_and_access"
# gem 'spree_frontend',
# Spree frontend gem
# gem 'spree_rails_frontend', github: 'spree/spree_rails_frontend'
# Use Redis adapter to run Action Cable in production
# gem "redis", ">= 4.0.1"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"

  # Static analysis for security vulnerabilities [https://brakemanscanner.org/]
  gem "brakeman", require: false

  # Omakase Ruby styling [https://github.com/rails/rubocop-rails-omakase/]
  gem "rubocop-rails-omakase", require: false
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
end

gem "dotenv", groups: [ :development, :test ]

gem "deface", "~> 1.6"
gem "spree_frontend", "~> 4.7"
gem "jsbundling-rails"
gem "turbo-rails"
gem "browser"
gem "webpacker"
gem "minitest", "~> 5.5.1"
gem "city-state"
gem "geocoder"
# gem "spree_admin_roles_and_access", github: "vinsol-spree-contrib/spree_admin_roles_and_access"
