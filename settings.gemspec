# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

require 'middleman-settings/version'

Gem::Specification.new do |s|
  s.name        = "middleman-settings"
  s.version     = ::Middleman::Settings::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Gregory Horion"]
  s.email       = ["greg2502@gmail.com"]
  s.homepage    = "http://gregory.io"
  s.summary     = %q{Config files management for middleman http://middlemanapp.com}
  s.description = %q{This Gem will let you use settings from config files everywhere}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # The version of middleman-core your extension depends on
  s.add_runtime_dependency("middleman-core", [">= 3.2.2"])

  # Additional dependencies
  # s.add_runtime_dependency("gem-name", "gem-version")
end
