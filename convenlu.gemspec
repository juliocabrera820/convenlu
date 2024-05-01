# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'convenlu/version'

Gem::Specification.new do |spec|
  spec.name          = 'convenlu'
  spec.version       = Convenlu::VERSION
  spec.authors       = ['julio cabrera']
  spec.email         = ['juliocabrera820@gmail.com']
  spec.summary       = 'A ruby gem that helps to write conventional commits'
  spec.description   = 'Commit message will be formatted based on defined stantards'
  spec.homepage      = 'https://github.com/juliocabrera820/convenlu'
  spec.metadata      = { 'source_code_uri' => 'https://github.com/juliocabrera820/convenlu' }
  spec.license       = 'MIT'
  spec.files = Dir.glob('{bin,lib}/**/*')
  spec.bindir        = 'bin'
  spec.executables   = ['convenlu']
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 3.0.6'

  spec.add_development_dependency 'bundler', '~> 2.2.33'
end
