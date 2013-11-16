# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'usershell/version'

Gem::Specification.new do |spec|
  spec.name          = "usershell"
  spec.version       = UserShell::VERSION
  spec.authors       = ["Baris Balic"]
  spec.email         = ["leafybasil@gmail.com"]
  spec.description   = %q{UserShell is a tiny gem that uses the canonical approach to detect the shell for the current user, or a specified user.}
  spec.summary       = spec.description
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
