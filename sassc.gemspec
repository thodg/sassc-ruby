# frozen_string_literal: true

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "sassc/version"

Gem::Specification.new do |spec|

  spec.name          = "sassc"
  spec.version       = SassC::VERSION
  spec.authors       = ["Ryan Boland"]
  spec.email         = ["ryan@tanookilabs.com"]
  spec.summary       = "Use libsass with Ruby!"
  spec.description   = "Use libsass with Ruby!"
  spec.homepage      = "https://github.com/sass/sassc-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})

  spec.required_ruby_version = ">= 2.0.0"

  spec.require_paths = ["lib"]

  spec.platform      = Gem::Platform::RUBY

  spec.add_development_dependency "minitest", "~> 5.5.1"
  spec.add_development_dependency "minitest-around"
  spec.add_development_dependency "test_construct"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "bundler"

  spec.add_dependency "ffi", "~> 1.9"

  gem_dir = File.expand_path(File.dirname(__FILE__)) + "/"

end
