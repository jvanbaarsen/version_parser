# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "version_parser"
  spec.version       = "1.0.2"
  spec.authors       = ["Jeroen van Baarsen"]
  spec.email         = ["jeroenvanbaarsen@gmail.com"]

  spec.summary       = %q{Check two versions against each other}
  spec.description   = %q{Check two version against each other to see if you're up to date}
  spec.homepage      = "https://github.com/jvanbaarsen/version_parser"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
end
