# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rack/flash/session/version"

Gem::Specification.new do |s|
  s.name        = "rack-flash-session"
  s.version     = Rack::Flash::Session::VERSION
  s.authors     = ["Tom Simnett"]
  s.email       = ["tom@initforthe.com"]
  s.homepage    = "http://github.com/initforthe/rack-flash-session"
  s.summary     = %q{Rack middleware for Flash session handling}
  s.description = %q{Rack middleware for Flash session handling}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
