# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "jmeter/version"

Gem::Specification.new do |s|
  s.name        = "jmeter"
  s.version     = Jmeter::VERSION
  s.authors     = ["Aldric Giacomoni"]
  s.email       = %W(trevoke@gmail.com)
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "jmeter"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = %W(lib)

  # specify any dependencies here; for example:
  s.add_development_dependency "test-unit"
  s.add_development_dependency "rake"
  # s.add_runtime_dependency "rest-client"
end
