# -*- encoding: utf-8 -*-
require File.expand_path("../lib/exotel/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "exotel-kb"
  s.version     = Exotel::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Vijendra Rao']
  s.email       = ['vijendrakarkala@gmail.com']
  s.homepage    = %q{https://github.com/ssandeep/exotel}
  s.summary     = "Wrapper for exotel api with dependency on older version of httparse"
  s.description = "Exotel api wrapper with dependency on older version of httparse."

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "exotel"

  s.add_development_dependency "bundler", ">= 1.0.0"
  s.add_development_dependency "webmock"
  s.add_development_dependency "mocha"
  if RUBY_VERSION == "1.8.7"
    s.add_development_dependency 'minitest', '3.2.0'
  end
  
  s.add_dependency 'httparty', '= 0.7.8'
  
  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end
