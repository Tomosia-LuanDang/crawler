# -*- encoding: utf-8 -*-
# stub: celerity 0.9.2 ruby lib

Gem::Specification.new do |s|
  s.name = "celerity".freeze
  s.version = "0.9.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jari Bakken".freeze, "T. Alexander Lystad".freeze, "Knut Johannes Dahle".freeze]
  s.date = "2012-01-12"
  s.description = "Celerity is a JRuby wrapper around HtmlUnit \u00E2\u0080\u0093 a headless Java browser with JavaScript support. It provides a simple API for programmatic navigation through web applications. Celerity provides a superset of Watir's API.".freeze
  s.email = "jari.bakken@gmail.com".freeze
  s.homepage = "http://github.com/jarib/celerity".freeze
  s.rubygems_version = "3.3.7".freeze
  s.summary = "Celerity is a JRuby library for easy and fast functional test automation for web applications.".freeze

  s.installed_by_version = "3.3.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<rake>.freeze, ["~> 0.9.2"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 2.0.0"])
    s.add_development_dependency(%q<yard>.freeze, [">= 0"])
    s.add_development_dependency(%q<sinatra>.freeze, ["~> 1.0"])
    s.add_development_dependency(%q<mongrel>.freeze, [">= 0"])
  else
    s.add_dependency(%q<rake>.freeze, ["~> 0.9.2"])
    s.add_dependency(%q<rspec>.freeze, ["~> 2.0.0"])
    s.add_dependency(%q<yard>.freeze, [">= 0"])
    s.add_dependency(%q<sinatra>.freeze, ["~> 1.0"])
    s.add_dependency(%q<mongrel>.freeze, [">= 0"])
  end
end
