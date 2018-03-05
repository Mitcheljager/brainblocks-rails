# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "brainblocks-rails/version"

Gem::Specification.new do |spec|
  spec.name          = "brainblocks-rails"
  spec.version       = BrainblocksRails::VERSION
  spec.authors       = ["Mitchel"]
  spec.email         = ["mitchel_jager@hotmail.com"]

  spec.summary       = %q{Simplified use of Brainblocks (Nano payment) in Rails}
  spec.description   = %q{Simplified use of Brainblocks (Nano payment) in Rails}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
end
