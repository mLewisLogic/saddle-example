# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = 'lasso-example'
  gem.version       = '0.0.0'
  gem.authors       = ['Mike Lewis']
  gem.email         = ['mike.lewis@airbnb.com']
  gem.description   = %q{Concrete implementation of an lasso based client}
end
