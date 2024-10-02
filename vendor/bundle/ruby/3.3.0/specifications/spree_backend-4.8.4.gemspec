# -*- encoding: utf-8 -*-
# stub: spree_backend 4.8.4 ruby lib

Gem::Specification.new do |s|
  s.name = "spree_backend".freeze
  s.version = "4.8.4".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/spree/spree_backend/issues", "changelog_uri" => "https://github.com/spree/spree_backend/releases/tag/v4.8.4", "documentation_uri" => "https://docs.spreecommerce.org/", "source_code_uri" => "https://github.com/spree/spree_backend/tree/v4.8.4" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Sean Schofield".freeze, "Spark Solutions".freeze]
  s.date = "2024-07-31"
  s.description = "Admin Dashboard for Spree eCommerce platform".freeze
  s.email = "hello@spreecommerce.org".freeze
  s.homepage = "https://spreecommerce.org".freeze
  s.licenses = ["BSD-3-Clause".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 3.0".freeze)
  s.requirements = ["none".freeze]
  s.rubygems_version = "3.5.3".freeze
  s.summary = "Admin Dashboard for Spree eCommerce platform".freeze

  s.installed_by_version = "3.5.17".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<spree>.freeze, [">= 4.7.0".freeze])
  s.add_runtime_dependency(%q<babel-transpiler>.freeze, ["~> 0.7".freeze])
  s.add_runtime_dependency(%q<bootstrap>.freeze, ["~> 4.0".freeze])
  s.add_runtime_dependency(%q<flag-icons-rails>.freeze, ["~> 3.4".freeze])
  s.add_runtime_dependency(%q<flatpickr>.freeze, ["~> 4.6".freeze])
  s.add_runtime_dependency(%q<glyphicons>.freeze, ["~> 1.0".freeze])
  s.add_runtime_dependency(%q<turbo-rails>.freeze, [">= 0".freeze])
  s.add_runtime_dependency(%q<stimulus-rails>.freeze, [">= 0".freeze])
  s.add_runtime_dependency(%q<importmap-rails>.freeze, [">= 0".freeze])
  s.add_runtime_dependency(%q<inline_svg>.freeze, ["~> 1.5".freeze])
  s.add_runtime_dependency(%q<jquery-rails>.freeze, ["~> 4.3".freeze])
  s.add_runtime_dependency(%q<jquery-ui-rails>.freeze, [">= 6".freeze, "< 8".freeze])
  s.add_runtime_dependency(%q<responders>.freeze, [">= 0".freeze])
  s.add_runtime_dependency(%q<requestjs-rails>.freeze, [">= 0".freeze])
  s.add_runtime_dependency(%q<sass-rails>.freeze, [">= 5".freeze])
  s.add_runtime_dependency(%q<select2-rails>.freeze, ["~> 4.0.6".freeze])
  s.add_runtime_dependency(%q<sprockets>.freeze, ["~> 4.0".freeze])
  s.add_runtime_dependency(%q<tinymce-rails>.freeze, ["~> 5.0".freeze])
end
