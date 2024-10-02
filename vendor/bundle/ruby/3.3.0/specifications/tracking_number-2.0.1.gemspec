# -*- encoding: utf-8 -*-
# stub: tracking_number 2.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "tracking_number".freeze
  s.version = "2.0.1".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jeff Keen".freeze]
  s.date = "2024-08-20"
  s.description = "This gem identifies valid tracking numbers and the service they're associated with. It can also tell you a little bit about the package purely from the number\u2014there's quite a bit of info tucked away into those numbers, it turns out.".freeze
  s.email = "jeff@keen.me".freeze
  s.executables = ["console".freeze]
  s.extra_rdoc_files = ["LICENSE.txt".freeze]
  s.files = ["LICENSE.txt".freeze, "bin/console".freeze]
  s.homepage = "http://github.com/jkeen/tracking_number".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 3.0.0".freeze)
  s.rubygems_version = "3.2.32".freeze
  s.summary = "Identifies valid tracking numbers".freeze

  s.installed_by_version = "3.5.17".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<activesupport>.freeze, [">= 4.2.5".freeze])
  s.add_runtime_dependency(%q<json>.freeze, [">= 1.8.3".freeze])
  s.add_development_dependency(%q<activemodel>.freeze, ["> 4.2.5.1".freeze])
  s.add_development_dependency(%q<minitest>.freeze, ["~> 5.5".freeze])
  s.add_development_dependency(%q<minitest-reporters>.freeze, ["~> 1.1".freeze])
  s.add_development_dependency(%q<rake>.freeze, ["~> 13.0".freeze])
  s.add_development_dependency(%q<shoulda>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<simplecov>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<terminal-table>.freeze, [">= 0".freeze])
end
