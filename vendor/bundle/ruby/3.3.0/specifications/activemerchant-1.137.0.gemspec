# -*- encoding: utf-8 -*-
# stub: activemerchant 1.137.0 ruby lib

Gem::Specification.new do |s|
  s.name = "activemerchant".freeze
  s.version = "1.137.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "allowed_push_host" => "https://rubygems.org" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Tobias Luetke".freeze]
  s.date = "2024-08-02"
  s.description = "Active Merchant is a simple payment abstraction library used in and sponsored by Shopify. It is written by Tobias Luetke, Cody Fauser, and contributors. The aim of the project is to feel natural to Ruby users and to abstract as many parts as possible away from the user to offer a consistent interface across all supported gateways.".freeze
  s.email = "tobi@leetsoft.com".freeze
  s.homepage = "http://activemerchant.org/".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 3.1".freeze)
  s.rubygems_version = "3.5.16".freeze
  s.summary = "Framework and tools for dealing with credit card transactions.".freeze

  s.installed_by_version = "3.5.17".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<activesupport>.freeze, [">= 4.2".freeze])
  s.add_runtime_dependency(%q<builder>.freeze, [">= 2.1.2".freeze, "< 4.0.0".freeze])
  s.add_runtime_dependency(%q<i18n>.freeze, [">= 0.6.9".freeze])
  s.add_runtime_dependency(%q<nokogiri>.freeze, ["~> 1.4".freeze])
  s.add_runtime_dependency(%q<rexml>.freeze, ["~> 3.3".freeze, ">= 3.3.4".freeze])
  s.add_development_dependency(%q<mocha>.freeze, ["~> 1".freeze])
  s.add_development_dependency(%q<pry>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<pry-byebug>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rake>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<test-unit>.freeze, ["~> 3".freeze])
  s.add_development_dependency(%q<thor>.freeze, [">= 0".freeze])
end
