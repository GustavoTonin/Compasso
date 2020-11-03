# -*- encoding: utf-8 -*-
# stub: digit_checksum 0.2.3 ruby lib

Gem::Specification.new do |s|
  s.name = "digit_checksum".freeze
  s.version = "0.2.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Rafael Fidelis".freeze]
  s.bindir = "exe".freeze
  s.date = "2016-08-11"
  s.description = "Ruby implementation of check digits algorithm for generic documents numbers".freeze
  s.email = ["rafa_fidelis@yahoo.com.br".freeze]
  s.homepage = "https://github.com/fidelisrafael/digit_checksum".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.2".freeze
  s.summary = "Ruby implementation of check digits algorithm for generic documents numbers".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<bundler>.freeze, ["~> 1.12"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_development_dependency(%q<pry>.freeze, ["~> 0.10.3"])
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.12"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<pry>.freeze, ["~> 0.10.3"])
  end
end
