# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'chess/version'

Gem::Specification.new do |spec|
  spec.name          = 'chess'
  spec.version       = Chess::VERSION
  spec.authors       = ['Efflam Castel']
  spec.email         = ['efflamm.castel@gmail.com']

  spec.summary       = 'Chess in Ruby'
  spec.description   = 'Chess gem for using in ChessFactory'
  spec.homepage      = 'https://github.com/floum/chess'
  spec.license       = 'MIT'

  spec.metadata['allowed_push_host'] = ''

  spec.files         = `git ls-files -z`
    .split("\x0")
    .reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'bundler', '~> 1.7'
  spec.add_runtime_dependency 'rake', '~> 10.0'

  spec.add_development_dependency 'rubocop', '~> 0.32'
  spec.add_development_dependency 'rspec', '~> 3.3'
  spec.add_development_dependency 'rspec-collection_matchers', '~> 1.1'
  spec.add_development_dependency 'guard-rspec', '~> 4.5'
  spec.add_development_dependency 'guard-rubocop', '~> 1.2'
  spec.add_development_dependency 'simplecov'
end
