# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'required_arg/version'

Gem::Specification.new do |spec|
  spec.name          = "required_arg"
  spec.version       = RequiredArg::VERSION
  spec.authors       = ["Max Jacobson"]
  spec.email         = ["max@hardscrabble.net"]

  spec.summary       = %q{Add required keyword arguments to Ruby 2.0.0}
  spec.description   = %q{Sometimes you really want to make a keyword argument required, but you just can't because you're using Ruby 2.0.0. But what if you could?}
  spec.homepage      = "https://github.com/maxjacobson/required_arg"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
