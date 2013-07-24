Gem::Specification.new do |s|
  s.name        = 'zwemwater'
  s.version     = '0.0.1'
  s.date        = '2013-07-14'
  s.summary     = 'Zwemwater.nl Ruby API'
  s.description = 'A simple gem to get swimming water recommendations from recognized Dutch swimming spots'
  s.authors     = ['Richard Venneman']
  s.email       = 'richardvenneman@me.com'
  s.files       = ['lib/zwemwater.rb']
  s.homepage    = 'http://github.com/richardvenneman/zwemwater'
  
  s.add_development_dependency('rake', '~> 10.1.0')
end