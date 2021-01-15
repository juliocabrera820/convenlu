
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "convenlu/version"

Gem::Specification.new do |spec|
  spec.name          = "convenlu"
  spec.version       = Convenlu::VERSION
  spec.authors       = ["julio cabrera"]
  spec.email         = ["juliocabrera820@gmail.com"]
  spec.summary       = "A ruby gem that helps to write conventional commits"
  spec.description   = "Commit message will be formatted based on defined stantards"
  spec.homepage      = "https://github.com/juliocabrera820/convenlu"
  spec.metadata      = { "source_code_uri" => "https://github.com/juliocabrera820/convenlu" }
  spec.license       = "MIT"
  spec.files = Dir.glob("{bin,lib}/**/*")
  spec.bindir        = "bin"
  spec.executables   = ['convenlu']
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_runtime_dependency "tty-prompt"
  spec.add_runtime_dependency "tty-spinner"
end
