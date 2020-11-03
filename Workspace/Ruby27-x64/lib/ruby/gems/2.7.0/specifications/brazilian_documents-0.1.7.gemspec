# -*- encoding: utf-8 -*-
# stub: brazilian_documents 0.1.7 ruby lib

Gem::Specification.new do |s|
  s.name = "brazilian_documents".freeze
  s.version = "0.1.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Rafael Fidelis".freeze]
  s.bindir = "exe".freeze
  s.date = "2020-02-05"
  s.description = "Esta gem implementa v\u00E1rios validadores de documentos oficiais brasileiros, como CPF, CNPJ, Inscri\u00E7\u00E3o estadual, RG e T\u00EDtulo de Eleitor".freeze
  s.email = ["rafa_fidelis@yahoo.com.br".freeze]
  s.homepage = "https://github.com/fidelisrafael/brazilian_documents".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.2".freeze
  s.summary = "Cole\u00E7\u00E3o de validadores para documentos brasileiros".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<digit_checksum>.freeze, ["~> 0.2.3"])
    s.add_development_dependency(%q<bundler>.freeze, ["~> 2.1.4"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
  else
    s.add_dependency(%q<digit_checksum>.freeze, ["~> 0.2.3"])
    s.add_dependency(%q<bundler>.freeze, ["~> 2.1.4"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
  end
end
