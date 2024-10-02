# -*- encoding: utf-8 -*-
# stub: spree_extension 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "spree_extension".freeze
  s.version = "0.1.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Damian Legawiec".freeze]
  s.date = "2022-11-03"
  s.description = "Common tools and helpers for Spree Extensions developers".freeze
  s.email = "damian@sparksolutions.co".freeze
  s.homepage = "https://spreecommerce.org".freeze
  s.licenses = ["BSD-3".freeze]
  s.rubygems_version = "3.0.9".freeze
  s.summary = "Common tools and helpers for Spree Extensions developers".freeze

  s.installed_by_version = "3.5.17".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<activerecord>.freeze, [">= 4.2".freeze])
  s.add_runtime_dependency(%q<spree_core>.freeze, [">= 0".freeze])
end
