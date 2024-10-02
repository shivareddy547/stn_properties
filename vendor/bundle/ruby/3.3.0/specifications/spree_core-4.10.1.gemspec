# -*- encoding: utf-8 -*-
# stub: spree_core 4.10.1 ruby lib

Gem::Specification.new do |s|
  s.name = "spree_core".freeze
  s.version = "4.10.1".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 1.8.23".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/spree/spree/issues", "changelog_uri" => "https://github.com/spree/spree/releases/tag/v4.10.1", "documentation_uri" => "https://docs.spreecommerce.org/", "source_code_uri" => "https://github.com/spree/spree/tree/v4.10.1" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Sean Schofield".freeze, "Spark Solutions Sp. z o.o.".freeze, "Vendo Connect Inc.".freeze]
  s.date = "2024-09-06"
  s.description = "Spree Models, Helpers, Services and core libraries".freeze
  s.email = "hello@spreecommerce.org".freeze
  s.homepage = "https://spreecommerce.org".freeze
  s.licenses = ["AGPL-3.0-or-later".freeze, "BSD-3-Clause".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 3.0".freeze)
  s.rubygems_version = "3.5.3".freeze
  s.summary = "The bare bones necessary for Spree".freeze

  s.installed_by_version = "3.5.17".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<actionpack>.freeze, [">= 6.1".freeze, "< 8.0".freeze])
  s.add_runtime_dependency(%q<actionview>.freeze, [">= 6.1".freeze, "< 8.0".freeze])
  s.add_runtime_dependency(%q<activejob>.freeze, [">= 6.1".freeze, "< 8.0".freeze])
  s.add_runtime_dependency(%q<activemodel>.freeze, [">= 6.1".freeze, "< 8.0".freeze])
  s.add_runtime_dependency(%q<activerecord>.freeze, [">= 6.1".freeze, "< 8.0".freeze])
  s.add_runtime_dependency(%q<activestorage>.freeze, [">= 6.1".freeze, "< 8.0".freeze])
  s.add_runtime_dependency(%q<activesupport>.freeze, [">= 6.1".freeze, "< 8.0".freeze])
  s.add_runtime_dependency(%q<railties>.freeze, [">= 6.1".freeze, "< 8.0".freeze])
  s.add_runtime_dependency(%q<activemerchant>.freeze, ["~> 1.67".freeze])
  s.add_runtime_dependency(%q<acts_as_list>.freeze, [">= 0.8".freeze])
  s.add_runtime_dependency(%q<auto_strip_attributes>.freeze, ["~> 2.6".freeze])
  s.add_runtime_dependency(%q<awesome_nested_set>.freeze, ["~> 3.3".freeze, ">= 3.3.1".freeze])
  s.add_runtime_dependency(%q<carmen>.freeze, [">= 1.0".freeze])
  s.add_runtime_dependency(%q<cancancan>.freeze, ["~> 3.2".freeze])
  s.add_runtime_dependency(%q<friendly_id>.freeze, ["~> 5.2".freeze, ">= 5.2.1".freeze])
  s.add_runtime_dependency(%q<highline>.freeze, [">= 2".freeze, "< 4".freeze])
  s.add_runtime_dependency(%q<kaminari>.freeze, ["~> 1.2".freeze])
  s.add_runtime_dependency(%q<money>.freeze, ["~> 6.13".freeze])
  s.add_runtime_dependency(%q<monetize>.freeze, ["~> 1.9".freeze])
  s.add_runtime_dependency(%q<paranoia>.freeze, [">= 2.4".freeze])
  s.add_runtime_dependency(%q<ransack>.freeze, [">= 4.1".freeze])
  s.add_runtime_dependency(%q<rexml>.freeze, [">= 0".freeze])
  s.add_runtime_dependency(%q<state_machines-activerecord>.freeze, ["~> 0.6".freeze])
  s.add_runtime_dependency(%q<state_machines-activemodel>.freeze, ["~> 0.7".freeze])
  s.add_runtime_dependency(%q<stringex>.freeze, [">= 0".freeze])
  s.add_runtime_dependency(%q<tracking_number>.freeze, [">= 0".freeze])
  s.add_runtime_dependency(%q<validates_zipcode>.freeze, [">= 0".freeze])
  s.add_runtime_dependency(%q<image_processing>.freeze, ["~> 1.2".freeze])
  s.add_runtime_dependency(%q<active_storage_validations>.freeze, ["~> 1.1".freeze])
  s.add_runtime_dependency(%q<activerecord-typedstore>.freeze, [">= 0".freeze])
  s.add_runtime_dependency(%q<mobility>.freeze, ["~> 1.2".freeze])
  s.add_runtime_dependency(%q<mobility-ransack>.freeze, ["~> 1.2".freeze])
  s.add_runtime_dependency(%q<friendly_id-mobility>.freeze, ["~> 1.0".freeze])
  s.add_runtime_dependency(%q<request_store>.freeze, ["~> 1.7".freeze])
end
