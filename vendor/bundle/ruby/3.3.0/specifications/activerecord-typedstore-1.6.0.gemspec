# -*- encoding: utf-8 -*-
# stub: activerecord-typedstore 1.6.0 ruby lib

Gem::Specification.new do |s|
  s.name = "activerecord-typedstore".freeze
  s.version = "1.6.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jean Boussier".freeze]
  s.date = "2024-02-28"
  s.description = "ActiveRecord::Store but with type definition".freeze
  s.email = ["jean.boussier@gmail.com".freeze]
  s.homepage = "https://github.com/byroot/activerecord-typedstore".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.5.5".freeze
  s.summary = "Add type casting and full method attributes support to \u0410ctiveRecord store".freeze

  s.installed_by_version = "3.5.17".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<activerecord>.freeze, [">= 6.1".freeze])
  s.add_development_dependency(%q<bundler>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rake>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rspec>.freeze, ["~> 3".freeze])
  s.add_development_dependency(%q<sqlite3>.freeze, ["~> 1".freeze])
  s.add_development_dependency(%q<database_cleaner>.freeze, ["~> 1".freeze])
end
