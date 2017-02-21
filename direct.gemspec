# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'direct/version'

Gem::Specification.new do |spec|
  spec.name          = "direct"
  spec.version       = Direct::VERSION
  spec.authors       = ["Aaron Patterson", "Justin Searls"]
  spec.email         = ["aaron.patterson@gmail.com", "searls@gmail.com"]

  spec.summary       = %q{Dependencies, direct to your door!}
  spec.description   = %q{Resolves dependencies with the SAT}
  spec.homepage      = "https://github.com/directrb/direct"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "ricosat"

  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
