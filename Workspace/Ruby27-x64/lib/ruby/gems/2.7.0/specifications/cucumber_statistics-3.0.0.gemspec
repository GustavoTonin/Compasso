# -*- encoding: utf-8 -*-
# stub: cucumber_statistics 3.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "cucumber_statistics".freeze
  s.version = "3.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Kevin Ross".freeze]
  s.date = "2018-06-20"
  s.description = "    Want to know what is slowing down your build?\n".freeze
  s.email = ["kevin.ross@alienfast.com.com".freeze]
  s.homepage = "http://github.com/alienfast/cucumber_statistics".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.2".freeze
  s.summary = "An cucumber formatter that will gather statistics and generate a single page showing step time metrics.".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<bundler>.freeze, [">= 1.3"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_development_dependency(%q<rspec>.freeze, [">= 2.14.1"])
    s.add_runtime_dependency(%q<haml>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<tilt>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<cucumber>.freeze, [">= 3.0.0"])
    s.add_runtime_dependency(%q<virtus>.freeze, [">= 0"])
  else
    s.add_dependency(%q<bundler>.freeze, [">= 1.3"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 2.14.1"])
    s.add_dependency(%q<haml>.freeze, [">= 0"])
    s.add_dependency(%q<tilt>.freeze, [">= 0"])
    s.add_dependency(%q<cucumber>.freeze, [">= 3.0.0"])
    s.add_dependency(%q<virtus>.freeze, [">= 0"])
  end
end
