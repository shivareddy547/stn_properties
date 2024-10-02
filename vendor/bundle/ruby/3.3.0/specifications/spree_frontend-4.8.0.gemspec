# -*- encoding: utf-8 -*-
# stub: spree_frontend 4.8.0 ruby lib

Gem::Specification.new do |s|
  s.name = "spree_frontend".freeze
  s.version = "4.8.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/spree/spree_rails_frontend/issues", "changelog_uri" => "https://github.com/spree/spree_rails_frontend/releases/tag/v4.8.0", "documentation_uri" => "https://docs.spreecommerce.org/", "source_code_uri" => "https://github.com/spree/spree_rails_frontend/tree/v4.8.0" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Sean Schofield".freeze, "Spark Solutions Sp. z o.o.".freeze, "Vendo Connect Inc.".freeze]
  s.date = "2024-05-27"
  s.description = "Spree Commerce Storefront built with Rails and Turbo/Hotwire".freeze
  s.email = "hello@spreecommerce.org".freeze
  s.homepage = "https://spreecommerce.org".freeze
  s.licenses = ["BSD-3-Clause".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 3.0".freeze)
  s.requirements = ["none".freeze]
  s.rubygems_version = "3.5.3".freeze
  s.summary = "Spree Commerce Storefront built with Rails and Turbo/Hotwire".freeze

  s.installed_by_version = "3.5.17".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<spree_api>.freeze, ["~> 4.7".freeze])
  s.add_runtime_dependency(%q<spree_core>.freeze, ["~> 4.7".freeze])
  s.add_runtime_dependency(%q<babel-transpiler>.freeze, ["~> 0.7".freeze])
  s.add_runtime_dependency(%q<bootstrap>.freeze, ["~> 4.0".freeze])
  s.add_runtime_dependency(%q<glyphicons>.freeze, ["~> 1.0".freeze])
  s.add_runtime_dependency(%q<canonical-rails>.freeze, ["~> 0.2".freeze, ">= 0.2.10".freeze])
  s.add_runtime_dependency(%q<inline_svg>.freeze, ["~> 1.5".freeze])
  s.add_runtime_dependency(%q<jquery-rails>.freeze, ["~> 4.3".freeze])
  s.add_runtime_dependency(%q<sass-rails>.freeze, [">= 5".freeze])
  s.add_runtime_dependency(%q<turbo-rails>.freeze, [">= 0".freeze])
  s.add_runtime_dependency(%q<stimulus-rails>.freeze, [">= 0".freeze])
  s.add_runtime_dependency(%q<importmap-rails>.freeze, [">= 0".freeze])
  s.add_runtime_dependency(%q<responders>.freeze, [">= 0".freeze])
  s.add_runtime_dependency(%q<sprockets>.freeze, ["~> 4.0".freeze])
  s.add_runtime_dependency(%q<flag-icons-rails>.freeze, ["~> 3.4".freeze])
  s.add_runtime_dependency(%q<active_link_to>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<capybara-accessible>.freeze, [">= 0".freeze])
end
