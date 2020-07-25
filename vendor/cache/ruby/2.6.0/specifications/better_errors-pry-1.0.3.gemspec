# -*- encoding: utf-8 -*-
# stub: better_errors-pry 1.0.3 ruby lib

Gem::Specification.new do |s|
  s.name = "better_errors-pry".freeze
  s.version = "1.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Charlie Somerville".freeze, "Robin Daugherty".freeze]
  s.bindir = "exe".freeze
  s.date = "2018-09-07"
  s.description = "Addon to Better Errors that adds Pry to the REPL.".freeze
  s.email = ["charlie@charliesomerville.com".freeze, "robin@robindaugherty.net".freeze]
  s.homepage = "https://github.com/RobinDaugherty/better_errors-pry".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0".freeze)
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Add Pry support to Better Errors".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.13"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_runtime_dependency(%q<better_errors>.freeze, ["~> 2.3", ">= 2.3.0"])
      s.add_runtime_dependency(%q<pry>.freeze, [">= 0.9"])
      s.add_runtime_dependency(%q<binding_of_caller>.freeze, [">= 0"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.13"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_dependency(%q<better_errors>.freeze, ["~> 2.3", ">= 2.3.0"])
      s.add_dependency(%q<pry>.freeze, [">= 0.9"])
      s.add_dependency(%q<binding_of_caller>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.13"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<better_errors>.freeze, ["~> 2.3", ">= 2.3.0"])
    s.add_dependency(%q<pry>.freeze, [">= 0.9"])
    s.add_dependency(%q<binding_of_caller>.freeze, [">= 0"])
  end
end
