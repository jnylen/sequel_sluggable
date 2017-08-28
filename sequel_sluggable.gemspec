#!/usr/bin/env gem build
# -*- encoding: utf-8 -*-

require 'date'
require File.expand_path('../lib/sequel/plugins/sluggable/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name     = 'sequel_sluggable'
  gem.version  = Sequel::Plugins::Sluggable::VERSION.dup
  gem.authors  = ['Pavel Kunc', 'Joakim Nylén']
  gem.date     = Date.today.to_s
  gem.email = 'me@jnylen.nu'
  gem.homepage = 'http://github.com/jnylen/sequel_sluggable'
  gem.summary = 'Sequel plugin which provides Slug functionality for model.'
  gem.description = gem.summary

  gem.has_rdoc = true
  gem.require_paths = ['lib']
  gem.extra_rdoc_files = ['README.rdoc', 'LICENSE', 'CHANGELOG']
  gem.files = Dir['Rakefile', '{lib,spec}/**/*', 'README*', 'LICENSE*', 'CHANGELOG*'] & `git ls-files -z`.split("\0")

  gem.add_dependency 'sequel', '>= 4.0.0'
  gem.add_dependency 'babosa', '~> 1.0', '>= 1.0.2'
  gem.add_development_dependency 'sqlite3-ruby'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'yard'
end
