# -*- encoding: utf-8 -*-
# stub: mobility 1.2.9 ruby lib

Gem::Specification.new do |s|
  s.name = "mobility".freeze
  s.version = "1.2.9".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/shioyama/mobility/issues", "changelog_uri" => "https://github.com/shioyama/mobility/blob/master/CHANGELOG.md", "homepage_uri" => "https://github.com/shioyama/mobility", "rubygems_mfa_required" => "true", "source_code_uri" => "https://github.com/shioyama/mobility" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Chris Salzberg".freeze]
  s.bindir = "exe".freeze
  s.cert_chain = ["-----BEGIN CERTIFICATE-----\nMIIEODCCAqCgAwIBAgIBATANBgkqhkiG9w0BAQsFADAjMSEwHwYDVQQDDBhjaHJp\ncy9EQz1kZWppbWF0YS9EQz1jb20wHhcNMjIwMzAyMDMyMTA5WhcNMjMwMzAyMDMy\nMTA5WjAjMSEwHwYDVQQDDBhjaHJpcy9EQz1kZWppbWF0YS9EQz1jb20wggGiMA0G\nCSqGSIb3DQEBAQUAA4IBjwAwggGKAoIBgQDURCKbt5oY0sCp4kYK1u5SLzVHg6Q1\n2LejeQvUGpR3gulWqrq/507XRxE/9FSpLfgo3cGGYio1/gg2Yp7pBI4ZNEz8d2Vg\n6caWLHYtHYF0/jlo177UspEF1bt3lCCmaA/ZyQpvoLi76Jf6VCBjepMqhLjeBSsA\nxUqSdgNT8lzduOzdYk/GWf2Trvyz72IN6rY7hSwJ/U4R2DusRNTbKC55iyu0MyqI\nNks33les0xQERucqes1YzSEnpott/GUQ/fFWV1Qx7M1hMnqbQIm493BueR6X95a2\nB7/aqY7LUVVmn9p65NMBJhbbP/pbAcLYV0C+y1Jy9NaVQTpWmJXVKBpYwlAzOJOQ\n+b/7MBzT5Zzudkq9OlA5rZJB0hFo/Bm38MOCTSTk1/RT+zmoOyb4bx/h400L4ZUt\nbRGON33BZ99gPiYdGfd3Pc/7FooteJASjKIO4Hman2ELRIdu6Bq+fIkTdJBcruS/\nXL6xoRitCG7CX0IqmMKuLiKA/J0amAikHGsCAwEAAaN3MHUwCQYDVR0TBAIwADAL\nBgNVHQ8EBAMCBLAwHQYDVR0OBBYEFMNUGAhS68egZT6DOfJwrfIdCtT/MB0GA1Ud\nEQQWMBSBEmNocmlzQGRlamltYXRhLmNvbTAdBgNVHRIEFjAUgRJjaHJpc0BkZWpp\nbWF0YS5jb20wDQYJKoZIhvcNAQELBQADggGBAHJPxoU7brN6goci9iclRYUq1Prs\n51E87VRywUDysHpaHJoGRTqRJsQxi5aGZ9pIbiXGj9WJKKnrhiv5cM5fWtAsz564\nRo+Zyx6UVt/2z9rcfYrnXtmC9wh+5/0UqAeoan9RiSd8lscQZ9pEY0E3cmzJRHSU\nt8kwB2ipVkFO17mdTVgc3C2ZbWRq80eTzkELDBb+8xO0Cskyh4sGMTOKfHs2RWcJ\n217Qeg0F9w0RcqwnORe5zmPihY9zswCPh0IUaJa1pNY+MLTff9LE/qTl3WVTgrif\nHsSSnstQYPSLJ3hSP/cu1aOmdXlJiim//XlDQ9DNp4KWje3UW3DMRdTwjW5wPmUq\nVA9Ij7DUPaZzUpy1NZEigf1GshvslOnvN5bgol1YFR46jpfZVlgt0K5XBQVNvp/A\nQHgocnSksU5GOM+G2UhjVycbTamd+bCxjWAZTEDZNafFt5CmnfK1D1UTIblR/ci9\nfUDdW+GhxhobB8N1mtDRlhELoxLLjx7mSvJ3Wg==\n-----END CERTIFICATE-----\n".freeze]
  s.date = "2022-06-24"
  s.description = "Stores and retrieves localized data through attributes on a Ruby class, with flexible support for different storage strategies.".freeze
  s.email = ["chris@dejimata.com".freeze]
  s.homepage = "https://github.com/shioyama/mobility".freeze
  s.licenses = ["MIT".freeze]
  s.post_install_message = "\nWarning: Mobility v1.0 includes backwards-incompatible changes (mostly around configuration).\n\nIf you are upgrading from an earlier version, please see:\n- https://github.com/shioyama/mobility/releases/tag/v1.0.0\n- https://github.com/shioyama/mobility/wiki/Introduction-to-Mobility-v1.0\n".freeze
  s.required_ruby_version = Gem::Requirement.new(">= 2.5".freeze)
  s.rubygems_version = "3.1.2".freeze
  s.summary = "Pluggable Ruby translation framework".freeze

  s.installed_by_version = "3.5.17".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<request_store>.freeze, ["~> 1.0".freeze])
  s.add_runtime_dependency(%q<i18n>.freeze, [">= 0.6.10".freeze, "< 2".freeze])
  s.add_development_dependency(%q<database_cleaner>.freeze, ["~> 1.5".freeze, ">= 1.5.3".freeze])
  s.add_development_dependency(%q<rake>.freeze, ["~> 12".freeze, ">= 12.2.1".freeze])
  s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0".freeze])
  s.add_development_dependency(%q<yard>.freeze, ["~> 0.9.0".freeze])
end
