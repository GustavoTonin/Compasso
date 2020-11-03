# -*- encoding: utf-8 -*-
# stub: mongodb 2.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "mongodb".freeze
  s.version = "2.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Alexey Petrushin".freeze]
  s.date = "2011-12-19"
  s.homepage = "http://alexeypetrushin.github.com/mongodb".freeze
  s.rubygems_version = "3.1.2".freeze
  s.summary = "Persistence for any Ruby Object & Driver enhancements for MongoDB.".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<mongo>.freeze, ["~> 1.5"])
  else
    s.add_dependency(%q<mongo>.freeze, ["~> 1.5"])
  end
end
