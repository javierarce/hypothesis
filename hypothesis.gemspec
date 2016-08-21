# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'hypothesis/version'

Gem::Specification.new do |spec|
  spec.name = 'hypothesis'
  spec.version = Hypothesis::VERSION
  spec.date = '2016-08-21'
  spec.summary = 'Ruby API for hypothesis '
  spec.description = 'Ruby API for hypothesis '
  spec.authors = ['Javier Arce']
  spec.email = 'javierarce@gmail.com'
  spec.homepage = 'https://github.com/javierarce/hypothesis'
  spec.license = 'MIT'

  spec.files = Dir['README.md', 'lib/**/{*,.[a-z]*}']
  spec.executables << 'hypothesis'
  spec.require_paths = ['lib']

  spec.required_ruby_version = '~> 2.1'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'byebug', '~> 3.5', '>= 3.5.1'
  spec.add_development_dependency 'rubocop', '~> 0.39.0'

  spec.add_dependency 'httparty', '~>0.14.0', '>=0.14.0'
end
