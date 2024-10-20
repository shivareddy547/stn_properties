# -*- encoding: utf-8 -*-
# stub: state_machines-activemodel 0.9.0 ruby lib

Gem::Specification.new do |s|
  s.name = "state_machines-activemodel".freeze
  s.version = "0.9.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Abdelkader Boudih".freeze, "Aaron Pfeifer".freeze]
  s.date = "2023-06-30"
  s.description = "Adds support for creating state machines for attributes on ActiveModel".freeze
  s.email = ["terminale@gmail.com".freeze, "aaron@pluginaweek.org".freeze]
  s.homepage = "https://github.com/state-machines/state_machines-activemodel".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 3.0.0".freeze)
  s.rubygems_version = "3.4.10".freeze
  s.summary = "ActiveModel integration for State Machines".freeze

  s.installed_by_version = "3.5.17".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<state_machines>.freeze, [">= 0.6.0".freeze])
  s.add_runtime_dependency(%q<activemodel>.freeze, [">= 6.0".freeze])
  s.add_development_dependency(%q<bundler>.freeze, [">= 1.6".freeze])
  s.add_development_dependency(%q<rake>.freeze, [">= 10".freeze])
  s.add_development_dependency(%q<appraisal>.freeze, [">= 1".freeze])
  s.add_development_dependency(%q<minitest>.freeze, ["~> 5.4".freeze])
  s.add_development_dependency(%q<minitest-reporters>.freeze, [">= 0".freeze])
end
