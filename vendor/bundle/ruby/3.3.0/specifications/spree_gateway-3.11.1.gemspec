# -*- encoding: utf-8 -*-
# stub: spree_gateway 3.11.1 ruby lib

Gem::Specification.new do |s|
  s.name = "spree_gateway".freeze
  s.version = "3.11.1".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/spree/spree_gateway/issues", "changelog_uri" => "https://github.com/spree/spree_gateway/releases/tag/v3.11.1", "documentation_uri" => "https://guides.spreecommerce.org/", "source_code_uri" => "https://github.com/spree/spree_gateway/tree/v3.11.1" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Spree Commerce".freeze]
  s.date = "2024-05-10"
  s.description = "Collection of Payment Gateways for Spree Commerce such as Stripe, Braintree, etc.".freeze
  s.email = "gems@spreecommerce.com".freeze
  s.homepage = "https://spreecommerce.org".freeze
  s.licenses = ["BSD-3-Clause".freeze]
  s.requirements = ["none".freeze]
  s.rubygems_version = "3.5.3".freeze
  s.summary = "Collection of Payment Gateways for Spree Commerce such as Stripe, Braintree, etc.".freeze

  s.installed_by_version = "3.5.17".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<spree_core>.freeze, [">= 3.7".freeze])
  s.add_runtime_dependency(%q<spree_extension>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<braintree>.freeze, ["~> 4.20".freeze])
  s.add_development_dependency(%q<rspec-activemodel-mocks>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<spree_dev_tools>.freeze, [">= 0".freeze])
end
