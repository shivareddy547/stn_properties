# -*- encoding: utf-8 -*-
# stub: city-state 1.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "city-state".freeze
  s.version = "1.1.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Daniel Loureiro".freeze]
  s.date = "2023-08-14"
  s.description = "Useful to make forms and validations. It uses MaxMind database.".freeze
  s.email = ["loureirorg@gmail.com".freeze]
  s.homepage = "https://github.com/thecodecrate/city-state".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.6.0".freeze)
  s.rubygems_version = "3.3.26".freeze
  s.summary = "Simple list of cities and states of the world".freeze

  s.installed_by_version = "3.5.17".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_development_dependency(%q<bundler>.freeze, [">= 1.7".freeze])
  s.add_development_dependency(%q<rake>.freeze, [">= 11.0".freeze])
  s.add_runtime_dependency(%q<rubyzip>.freeze, [">= 2.3".freeze])
  s.add_development_dependency(%q<rspec>.freeze, ["~> 3.10".freeze])
end
