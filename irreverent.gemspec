$:.push File.expand_path('../lib', __FILE__)

require 'irreverent/version'

Gem::Specification.new do |s|
  s.name        = 'irreverent'
  s.version     = Irreverent::VERSION
  s.authors     = ['Franco Catena']
  s.email       = ['francocatena@gmail.com']
  s.homepage    = 'https://github.com/francocatena/irreverent'
  s.summary     = 'Improvements for Rails respond_with behaviour'
  s.description = 'Add i18n and some more magick to the responses with respond_with'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']
  s.test_files = Dir['test/**/*']

  s.add_dependency 'rails', '~> 4.0.2'

  s.add_development_dependency 'sqlite3'
end
