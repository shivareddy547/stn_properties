# -*- encoding: utf-8 -*-
# stub: friendly_id-mobility 1.0.4 ruby lib

Gem::Specification.new do |s|
  s.name = "friendly_id-mobility".freeze
  s.version = "1.0.4".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Chris Salzberg".freeze]
  s.date = "2023-02-05"
  s.email = ["chris@dejimata.com".freeze]
  s.homepage = "https://github.com/shioyama/friendly_id-mobility".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.3.7".freeze
  s.summary = "Translate your FriendlyId slugs with Mobility.".freeze

  s.installed_by_version = "3.5.17".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<mobility>.freeze, [">= 1.0.1".freeze, "< 2.0".freeze])
  s.add_runtime_dependency(%q<friendly_id>.freeze, [">= 5.0.0".freeze, "< 5.5".freeze])
  s.add_development_dependency(%q<rake>.freeze, [">= 12.3.3".freeze])
  s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0".freeze])
  s.add_development_dependency(%q<database_cleaner>.freeze, ["~> 1.5".freeze, ">= 1.5.3".freeze])
  s.add_development_dependency(%q<generator_spec>.freeze, ["~> 0.9.3".freeze])
end
