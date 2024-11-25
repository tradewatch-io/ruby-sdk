# -*- encoding: utf-8 -*-

=begin
#tradewatch.io

#Financial market data for Developers

The version of the OpenAPI document: 3.1.0

Generated by: https://openapi-generator.tech
Generator version: 7.11.0-SNAPSHOT

=end

$:.push File.expand_path("../lib", __FILE__)
require "tradewatch/version"

Gem::Specification.new do |s|
  s.name        = "tradewatch"
  s.version     = tradewatch::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["TradeWatch.io"]
  s.email       = [""]
  s.homepage    = "https://tradewatch.io"
  s.summary     = "tradewatch.io Ruby Gem"
  s.description = "Financial market data for Developers"
  s.license     = "Unlicense"
  s.required_ruby_version = ">= 2.7"
  s.metadata    = {}

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
