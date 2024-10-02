# -*- encoding: utf-8 -*-
# stub: awesome_nested_set 3.7.0 ruby lib

Gem::Specification.new do |s|
  s.name = "awesome_nested_set".freeze
  s.version = "3.7.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Brandon Keepers".freeze, "Daniel Morrison".freeze, "Philip Arndt".freeze]
  s.cert_chain = ["-----BEGIN CERTIFICATE-----\nMIIEhjCCAu6gAwIBAgIBATANBgkqhkiG9w0BAQsFADBNMQ0wCwYDVQQDDARnZW1z\nMREwDwYKCZImiZPyLGQBGRYBcDEVMBMGCgmSJomT8ixkARkWBWFybmR0MRIwEAYK\nCZImiZPyLGQBGRYCaW8wHhcNMjQwNzI1MDkzMTM3WhcNMjUwNzI1MDkzMTM3WjBN\nMQ0wCwYDVQQDDARnZW1zMREwDwYKCZImiZPyLGQBGRYBcDEVMBMGCgmSJomT8ixk\nARkWBWFybmR0MRIwEAYKCZImiZPyLGQBGRYCaW8wggGiMA0GCSqGSIb3DQEBAQUA\nA4IBjwAwggGKAoIBgQCb2WAH3bZwQeiyrc8ihYIM3cDDfiJbUYDxwE4+c8PT+WBO\nWIC4QMdiVLllwliKoCjDeH14dNHGYBJFFu4+jj+jyzYEPaxPn05N4zUZiFe3oXzf\nipaNxdCuilrMrRT0hFclKWvGUT5meVmfxEgX65FPHezv5W4za4ajxfMItUqJCooQ\nlfXB8sO6j/z94ZpHOzj/HT/q6krXSQWSYGLmb3ZKRIeo8uk3cAcAYBO6UtRm9AiU\nIRrRy0Q8TRANkaoAmcNgetZj/g++ppDxVD0GNijvOphPOpPdZpoQKoX+Z0wQSVdg\nrFXDi48MAfvbq+THNB4F/Mu2K+TuFT0ggsyWazgdfKsH3gt6qlqQ6unx04SCsJmB\n3XUr5Wquco64evFNXHaN3nrUMuZMecETRPTwyXRl7gMahDEb1OB+pcZvkXQU+0Tc\nUNq+Y9MSfvmPBV8T4IZN43eJetY4Roco8ULQH2TeCppgQAWImeQOzGdHaL7ZNAYu\nbbv1i5bW9bOBCY3N9+0CAwEAAaNxMG8wCQYDVR0TBAIwADALBgNVHQ8EBAMCBLAw\nHQYDVR0OBBYEFLyPUmHA7YP43s4Nd0gx/ryHSR3EMBoGA1UdEQQTMBGBD2dlbXNA\ncC5hcm5kdC5pbzAaBgNVHRIEEzARgQ9nZW1zQHAuYXJuZHQuaW8wDQYJKoZIhvcN\nAQELBQADggGBAAw69VoNOTd5HQOQczs0zm+p5bZw3e+EFiDy/N9o8Lv5rHfyGhA5\nf+faBqfxQHDB3VSEFtCnoVFsCUaC1AdRzWztqS40x5GgQRwcM2llTwMYv5C++gC2\nxPchTvi5FgDI++a05isObUvtNZ/wrZYBhy75ofzGAAMfuB/+XzsGbsOxSwZVlCne\nYLkPa26euounYtKRGLz+X9YD4vDHP5VwsrqsvACMwVGHv+MIM3TQ3TvVrQ7QR9Ov\nyUmuDhnAXep8omj9HyiukfqIdTsIMZK8nMcJH4wXC7mjjOBoyRtMwsQIT8OpwSP9\nA7++64WBwTLbbGSCMCdw8X1kmmaZjaPrNkJ4wNaeJPZPPgDmL1XKJavQ8xZ/nwGF\nVXf+6/IyX9OrQwL2uw0b+1NiR2gFpOLcOy2ixKdua13S9CWRRsR3VJve+PIyycC7\naLV+FI9i9b1YUXG2gDKqLOkF/FNBWNckAmGj7kYkdLG76G5aRGP0HvfKbIiQ3HTC\njAtsfxiSgc0fAw==\n-----END CERTIFICATE-----\n".freeze]
  s.date = "2024-08-28"
  s.description = "An awesome nested set implementation for Active Record".freeze
  s.email = "info@collectiveidea.com".freeze
  s.extra_rdoc_files = ["README.md".freeze]
  s.files = ["README.md".freeze]
  s.homepage = "https://github.com/collectiveidea/awesome_nested_set".freeze
  s.licenses = ["MIT".freeze]
  s.rdoc_options = ["--main".freeze, "README.md".freeze, "--inline-source".freeze, "--line-numbers".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0".freeze)
  s.rubygems_version = "3.5.11".freeze
  s.summary = "An awesome nested set implementation for Active Record".freeze

  s.installed_by_version = "3.5.17".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<activerecord>.freeze, [">= 4.0.0".freeze, "< 8.0".freeze])
  s.add_development_dependency(%q<appraisal>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<database_cleaner>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<pry>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<pry-nav>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rake>.freeze, ["~> 13".freeze])
  s.add_development_dependency(%q<rspec-rails>.freeze, [">= 4.0.0".freeze, "<= 6.2".freeze])
end
