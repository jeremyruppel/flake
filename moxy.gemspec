# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "moxy/version"

Gem::Specification.new do |s|
  s.name        = "moxy"
  s.version     = Moxy::VERSION
  s.authors     = ["Jeremy Ruppel"]
  s.email       = ["jeremy.ruppel@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{A simple mustache'd proxy object}
  s.description = %q{A simple mustache'd proxy object'}

  s.rubyforge_project = "moxy"
  
  s.add_development_dependency "rspec", "~> 2.6.0"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
