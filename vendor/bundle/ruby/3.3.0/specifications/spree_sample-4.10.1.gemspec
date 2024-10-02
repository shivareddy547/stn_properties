# -*- encoding: utf-8 -*-
# stub: spree_sample 4.10.1 ruby lib

Gem::Specification.new do |s|
  s.name = "spree_sample".freeze
  s.version = "4.10.1".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/spree/spree/issues", "changelog_uri" => "https://github.com/spree/spree/releases/tag/v4.10.1", "documentation_uri" => "https://docs.spreecommerce.org/", "source_code_uri" => "https://github.com/spree/spree/tree/v4.10.1" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Sean Schofield".freeze, "Spark Solutions Sp. z o.o.".freeze, "Vendo Connect Inc.".freeze]
  s.date = "2024-09-06"
  s.description = "Optional package containing example data of products, stores, shipping methods, categories and others to quickly setup a demo Spree store".freeze
  s.email = "hello@spreecommerce.org".freeze
  s.homepage = "https://spreecommerce.org".freeze
  s.licenses = ["AGPL-3.0-or-later".freeze, "BSD-3-Clause".freeze]
  s.requirements = ["none".freeze]
  s.rubygems_version = "3.5.3".freeze
  s.summary = "Sample data for Spree Commerce".freeze

  s.installed_by_version = "3.5.17".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<spree_core>.freeze, [">= 4.10.1".freeze])
  s.add_runtime_dependency(%q<ffaker>.freeze, ["~> 2.9".freeze])
end
