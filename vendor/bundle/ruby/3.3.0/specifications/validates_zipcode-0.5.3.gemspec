# -*- encoding: utf-8 -*-
# stub: validates_zipcode 0.5.3 ruby lib

Gem::Specification.new do |s|
  s.name = "validates_zipcode".freeze
  s.version = "0.5.3".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["David Gil".freeze]
  s.date = "2024-09-13"
  s.description = "Adds zipcode validation methods to ActiveModel considering different country zipcode formats.".freeze
  s.email = ["dgilperez@gmail.com".freeze]
  s.homepage = "http://github.com/dgilperez/validates_zipcode".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.4".freeze)
  s.rubygems_version = "3.5.17".freeze
  s.summary = "Localizable zipcode validation for Rails.".freeze

  s.installed_by_version = "3.5.17".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<activemodel>.freeze, [">= 4.2.0".freeze])
  s.add_development_dependency(%q<appraisal>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<bundler>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rake>.freeze, [">= 12.3.3".freeze])
  s.add_development_dependency(%q<rspec>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rubocop>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rubocop-rails>.freeze, [">= 0".freeze])
end
