# -*- encoding: utf-8 -*-
# stub: requestjs-rails 0.0.12 ruby lib

Gem::Specification.new do |s|
  s.name = "requestjs-rails".freeze
  s.version = "0.0.12".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Marcelo Lauxen".freeze]
  s.date = "2024-09-03"
  s.email = "marcelolauxen16@gmail.com".freeze
  s.homepage = "https://github.com/marcelolx/requestjs-rails".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.5.3".freeze
  s.summary = "A tiny Fetch API wrapper that allows you to make http requests without need to handle to send the CSRF Token on every request".freeze

  s.installed_by_version = "3.5.17".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<railties>.freeze, [">= 6.1.0".freeze])
end
