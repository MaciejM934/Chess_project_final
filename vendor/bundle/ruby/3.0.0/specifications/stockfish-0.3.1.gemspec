# -*- encoding: utf-8 -*-
# stub: stockfish 0.3.1 ruby lib

Gem::Specification.new do |s|
  s.name = "stockfish".freeze
  s.version = "0.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Linmiao Xu".freeze]
  s.date = "2016-01-19"
  s.description = "Ruby client for the Stockfish chess engine".freeze
  s.email = ["linmiao.xu@gmail.com".freeze]
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.2.3".freeze
  s.summary = "Ruby client for the Stockfish chess engine".freeze

  s.installed_by_version = "3.2.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_development_dependency(%q<minitest>.freeze, ["~> 5.0"])
    s.add_development_dependency(%q<pry>.freeze, ["~> 0.10"])
  else
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<minitest>.freeze, ["~> 5.0"])
    s.add_dependency(%q<pry>.freeze, ["~> 0.10"])
  end
end
