# -*- encoding: utf-8 -*-
require File.expand_path('../lib/saddle-example/version', __FILE__)

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name          = 'saddle-example'
  s.version       = SaddleExample::VERSION
  s.authors       = ['Mike Lewis']
  s.email         = ['mike@cleverkoala.com']
  s.description   = %q{Concrete implementation of an Saddle based client}
  s.summary       = %q{
    This is an example implementation of a Saddle client. Use this to learn
    about Saddle capabalitise and features.
  }

  s.homepage      = 'https://github.com/mLewisLogic/saddle-example'
  s.license       = 'MIT'

  s.add_dependency 'saddle', '~> 0.0.2'
end
