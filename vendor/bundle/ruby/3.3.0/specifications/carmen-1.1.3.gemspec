# -*- encoding: utf-8 -*-
# stub: carmen 1.1.3 ruby lib

Gem::Specification.new do |s|
  s.name = "carmen".freeze
  s.version = "1.1.3".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jim Benton".freeze]
  s.date = "2019-07-02"
  s.description = "Includes data from the Debian iso-data project.".freeze
  s.email = "jim@autonomousmachine.com".freeze
  s.homepage = "http://github.com/jim/carmen".freeze
  s.rubygems_version = "3.0.3".freeze
  s.summary = "A collection of geographic region data for Ruby".freeze

  s.installed_by_version = "3.5.17".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_development_dependency(%q<rake>.freeze, ["= 0.9.2.2".freeze])
  s.add_development_dependency(%q<i18n>.freeze, [">= 0".freeze])
  s.add_runtime_dependency(%q<activesupport>.freeze, [">= 3.0.0".freeze])
end
