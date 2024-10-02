# -*- encoding: utf-8 -*-
# stub: mobility-ransack 1.2.2 ruby lib

Gem::Specification.new do |s|
  s.name = "mobility-ransack".freeze
  s.version = "1.2.2".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Chris Salzberg".freeze]
  s.date = "2023-03-04"
  s.email = ["chris@dejimata.com".freeze]
  s.homepage = "https://github.com/shioyama/mobility-ransack".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.3.25".freeze
  s.summary = "Search attributes translated by Mobility with Ransack.".freeze

  s.installed_by_version = "3.5.17".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<ransack>.freeze, [">= 1.8.0".freeze, "< 5.0".freeze])
  s.add_runtime_dependency(%q<mobility>.freeze, [">= 1.0.1".freeze, "< 2.0".freeze])
  s.add_development_dependency(%q<rake>.freeze, [">= 12.3.3".freeze])
  s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0".freeze])
  s.add_development_dependency(%q<sqlite3>.freeze, ["~> 1.3".freeze, ">= 1.3.0".freeze])
  s.add_development_dependency(%q<database_cleaner>.freeze, ["~> 1.7".freeze, ">= 1.7.0".freeze])
end
