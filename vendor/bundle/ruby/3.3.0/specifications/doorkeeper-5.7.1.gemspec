# -*- encoding: utf-8 -*-
# stub: doorkeeper 5.7.1 ruby lib

Gem::Specification.new do |s|
  s.name = "doorkeeper".freeze
  s.version = "5.7.1".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/doorkeeper-gem/doorkeeper/issues", "changelog_uri" => "https://github.com/doorkeeper-gem/doorkeeper/blob/main/CHANGELOG.md", "documentation_uri" => "https://doorkeeper.gitbook.io/guides/", "homepage_uri" => "https://github.com/doorkeeper-gem/doorkeeper", "source_code_uri" => "https://github.com/doorkeeper-gem/doorkeeper" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Felipe Elias Philipp".freeze, "Tute Costa".freeze, "Jon Moss".freeze, "Nikita Bulai".freeze]
  s.date = "2024-06-25"
  s.description = "Doorkeeper is an OAuth 2 provider for Rails and Grape.".freeze
  s.email = ["bulaj.nikita@gmail.com".freeze]
  s.homepage = "https://github.com/doorkeeper-gem/doorkeeper".freeze
  s.licenses = ["MIT".freeze]
  s.post_install_message = "Starting from 5.5.0 RC1 Doorkeeper requires client authentication for Resource Owner Password Grant\nas stated in the OAuth RFC. You have to create a new OAuth client (Doorkeeper::Application) if you didn't\nhave it before and use client credentials in HTTP Basic auth if you previously used this grant flow without\nclient authentication. \n\nTo opt out of this you could set the \"skip_client_authentication_for_password_grant\" configuration option\nto \"true\", but note that this is in violation of the OAuth spec and represents a security risk.\n\nRead https://github.com/doorkeeper-gem/doorkeeper/issues/561#issuecomment-612857163 for more details.".freeze
  s.required_ruby_version = Gem::Requirement.new(">= 2.7".freeze)
  s.rubygems_version = "3.2.3".freeze
  s.summary = "OAuth 2 provider for Rails and Grape".freeze

  s.installed_by_version = "3.5.17".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<railties>.freeze, [">= 5".freeze])
  s.add_development_dependency(%q<appraisal>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<capybara>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<coveralls_reborn>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<database_cleaner>.freeze, ["~> 2.0".freeze])
  s.add_development_dependency(%q<factory_bot>.freeze, ["~> 6.0".freeze])
  s.add_development_dependency(%q<generator_spec>.freeze, ["~> 0.10.0".freeze])
  s.add_development_dependency(%q<grape>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rake>.freeze, [">= 11.3.0".freeze])
  s.add_development_dependency(%q<rspec-rails>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<timecop>.freeze, [">= 0".freeze])
end
