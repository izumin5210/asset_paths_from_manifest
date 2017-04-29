# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'asset_paths_from_manifest/version'

Gem::Specification.new do |spec|
  spec.name          = "asset_paths_from_manifest"
  spec.version       = AssetPathsFromManifest::VERSION
  spec.authors       = ["izumin5210"]
  spec.email         = ["masayuki@izumin.info"]

  spec.summary       = "Provides view helpers to compute full paths for assets from manifest json file"
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/izumin5210/asset_paths_from_manifest"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "meowcop", "~> 1.10"
end
