# -*- encoding: utf-8 -*-
# stub: spree_auth_devise 4.6.3 ruby lib

Gem::Specification.new do |s|
  s.name = "spree_auth_devise".freeze
  s.version = "4.6.3".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/spree/spree_auth_devise/issues", "changelog_uri" => "https://github.com/spree/spree_auth_devise/releases/tag/v4.6.3", "documentation_uri" => "https://guides.spreecommerce.org/", "source_code_uri" => "https://github.com/spree/spree_auth_devise/tree/v4.6.3" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Sean Schofield".freeze, "Spark Solutions".freeze]
  s.date = "2024-06-12"
  s.description = "Provides authentication and authorization services for use with Spree by using Devise and CanCan.".freeze
  s.email = "hello@spreecommerce.org".freeze
  s.homepage = "https://spreecommerce.org".freeze
  s.licenses = ["BSD-3-Clause".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.5.0".freeze)
  s.requirements = ["none".freeze]
  s.rubygems_version = "3.5.3".freeze
  s.summary = "Provides authentication and authorization services for use with Spree by using Devise and CanCan.".freeze

  s.installed_by_version = "3.5.17".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<devise>.freeze, ["~> 4.7".freeze])
  s.add_runtime_dependency(%q<devise-encryptable>.freeze, ["= 0.2.0".freeze])
  s.add_runtime_dependency(%q<spree_core>.freeze, [">= 4.5.0".freeze])
  s.add_runtime_dependency(%q<spree_extension>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<spree_dev_tools>.freeze, [">= 0".freeze])
end
