$:.push File.expand_path("../lib", __FILE__)

require 'yurei/version'

Gem::Specification.new do |s|
  s.name          = 'yurei'
  s.version       = Yurei::VERSION 
  s.date          = '2012-11-06'
  s.summary       = 'PhantomJS & CasperJS Binary for Mac OS X.'
  s.description   = 'PhantomJS & CasperJS Binary for Mac OS X.'
  
  s.authors       = ['Andy']
  s.email         = ['andrew@friendster.com']
  s.homepage      = 'http://github.com/andruandru/yurei'

  s.require_paths = ['lib']
  s.files         = Dir.glob("{lib,bin,vendor}/**/*") #`git ls-files`.split("\n")
  s.executables   << 'phantomjs'
  s.executables   << 'casperjs'

end
