# -*- encoding: utf-8 -*-
# stub: puppet 4.10.12 ruby lib

Gem::Specification.new do |s|
  s.name = "puppet".freeze
  s.version = "4.10.12"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Puppet Labs".freeze]
  s.date = "2018-05-29"
  s.description = "Puppet, an automated configuration management tool".freeze
  s.email = "info@puppetlabs.com".freeze
  s.executables = ["puppet".freeze]
  s.files = ["bin/puppet".freeze]
  s.homepage = "https://github.com/puppetlabs/puppet".freeze
  s.rdoc_options = ["--title".freeze, "Puppet - Configuration Management".freeze, "--main".freeze, "README.md".freeze, "--line-numbers".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3".freeze)
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Puppet, an automated configuration management tool".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<facter>.freeze, ["> 2.0", "< 4"])
      s.add_runtime_dependency(%q<hiera>.freeze, [">= 2.0", "< 4"])
      s.add_runtime_dependency(%q<json_pure>.freeze, ["~> 1.8"])
      s.add_runtime_dependency(%q<gettext-setup>.freeze, [">= 0.10", "< 1"])
      s.add_runtime_dependency(%q<locale>.freeze, ["~> 2.1"])
    else
      s.add_dependency(%q<facter>.freeze, ["> 2.0", "< 4"])
      s.add_dependency(%q<hiera>.freeze, [">= 2.0", "< 4"])
      s.add_dependency(%q<json_pure>.freeze, ["~> 1.8"])
      s.add_dependency(%q<gettext-setup>.freeze, [">= 0.10", "< 1"])
      s.add_dependency(%q<locale>.freeze, ["~> 2.1"])
    end
  else
    s.add_dependency(%q<facter>.freeze, ["> 2.0", "< 4"])
    s.add_dependency(%q<hiera>.freeze, [">= 2.0", "< 4"])
    s.add_dependency(%q<json_pure>.freeze, ["~> 1.8"])
    s.add_dependency(%q<gettext-setup>.freeze, [">= 0.10", "< 1"])
    s.add_dependency(%q<locale>.freeze, ["~> 2.1"])
  end
end
