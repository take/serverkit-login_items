# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'serverkit/login_items/version'

Gem::Specification.new do |spec|
  spec.name          = "serverkit-login_items"
  spec.version       = Serverkit::LoginItems::VERSION
  spec.authors       = ["Takehiro Adachi"]
  spec.email         = ["takehiro0740@gmail.com"]

  spec.summary       = "Serverkit plug-in for login items of Mac OS X."
  spec.homepage      = "https://github.com/take/serverkit-login_items"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "serverkit"
  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", '~> 3.2'
end
