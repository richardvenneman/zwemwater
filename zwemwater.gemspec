# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'zwemwater/version'

Gem::Specification.new do |s|
  s.name        = 'zwemwater'
  s.version     = Zwemwater::VERSION
  s.authors     = ['Richard Venneman']
  s.email       = 'richardvenneman@me.com'
  s.summary     = 'Zwemwater.nl Ruby API'
  s.description = 'A simple gem to get swimming water status from recognized Dutch swimming spots.'
  s.homepage    = 'http://github.com/richardvenneman/zwemwater'
  
  s.files       = Dir.glob("lib/**/*")
    
  s.add_development_dependency('rake', '~> 10.1.0')
  s.add_development_dependency('httparty', '~> 0.11.0')
  s.add_development_dependency('webmock', '~> 1.13.0')
end